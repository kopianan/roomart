import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/utils/constants.dart';

abstract class IITemFacae {
  Future<Either<String, List<DataItemModel>>> getItemLazyLoading(
      int offset, int limit);
  Future<Either<String, List<DataItemModel>>> getItemListByCategoryId(
      {int offset = 0, int limit = 1000, @required String categoryId});
}

@LazySingleton(as: IITemFacae)
class ItemRepoistory extends IITemFacae {
  Dio dio = Dio();

  Options options =
      Options(headers: {"AccessKey": Constants().accessKeyUltimo});

  @override
  Future<Either<String, List<DataItemModel>>> getItemLazyLoading(
      int offset, int limit) async {
    List<DataItemModel> _tempData = <DataItemModel>[];
    Response response;
    try {
      response = await dio.get(
          '${Constants().baseUrlProductionBackup}api,SPGApps.vm?cmd=2&loccode=GODM&limit=$limit&offset=$offset&sortby=updateDate&sortdirection=desc');

      List jsonData = json.decode(response.data.toString());
      print(jsonData.first);
      List<DataItemModel> data =
          jsonData.map((m) => DataItemModel.fromJson(m)).toList();
      data.forEach((element) {
        double data = double.tryParse(element.qty);
        if (data != null) {
          if (data > 0) {
            _tempData.add(element);
          }
        }
      });
      return right(_tempData);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<DataItemModel>>> getItemListByCategoryId(
      {int offset = 0, int limit = 1000, @required String categoryId}) async {
    List<DataItemModel> _tempData = <DataItemModel>[];
    Response response;
    try {
      response = await dio.get(
          "${Constants().baseUrlProductionBackup}api,SPGApps.vm?cmd=2&loccode=GODM&kategoriid=${categoryId}&limit=$limit&offset=$offset");

      List jsonData = json.decode(response.data);

      List<DataItemModel> data =
          jsonData.map((m) => DataItemModel.fromJson(m)).toList();

      data.removeWhere((obj) => (obj.qty == "null" ||
          obj.qty == "" ||
          obj.qty == " " ||
          double.parse(obj.qty).toStringAsFixed(0) == "0"));

      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }
}
