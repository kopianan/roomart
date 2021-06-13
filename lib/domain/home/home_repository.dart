import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/animation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/models/banner/banner_data_model.dart';
import 'package:roomart/domain/update/update_news_data_model.dart';
import 'package:roomart/utils/constants.dart';

abstract class IHomeFacade {
  Future<Either<String, List<BannerDataModel>>> getBanner(String customerId);
  Future<Either<String, List<UpdateNewsDataModel>>> getNewsList(
      String customerId);
}

@LazySingleton(as: IHomeFacade)
class HomeRepository extends IHomeFacade {
  Dio dio = Dio();

  Options options =
      Options(headers: {"AccessKey": Constants().accessKeyUltimo});
  @override
  Future<Either<String, List<BannerDataModel>>> getBanner(
      String customerId) async {
    var data = {"Token": Constants().tokenUltimo, "CustomerID": customerId};
    try {
      var response = await dio.post(
          "${Constants().getUltimoBaseUrl}/Announcement/GetAllBannerByCustomerID",
          data: data,
          options: options);

      List _data = response.data;
      final List _result =
          _data.map((e) => BannerDataModel.fromJson(e)).toList();

      return right(_result);
    } on DioError catch (e) {
      return left(e.message.toString());
    } catch (e) {
      return left(e.message.toString());
    }
  }

  @override
  Future<Either<String, List<UpdateNewsDataModel>>> getNewsList(
      String customerId) async {
    var data = {"Token": Constants().tokenUltimo, "CustomerID": customerId};
    try {
      var response = await dio.post(
          "${Constants().getUltimoBaseUrl}/Announcement/GetAllMessageByCustomerID",
          data: data,
          options: options);

      List _data = response.data;
      final List _result =
          _data.map((e) => UpdateNewsDataModel.fromJson(e)).toList();

      return right(_result);
    } on DioError catch (e) {
      return left(e.message.toString());
    } catch (e) {
      return left(e.message.toString());
    }
  }
}
