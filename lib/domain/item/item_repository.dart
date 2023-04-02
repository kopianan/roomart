import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/instance_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/application/item/item_controller.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/utils/constants.dart';

abstract class IITemFacae {
  Future<Either<String, List<DataItemModel>>> getItemLazyLoading(
      {int? offset, int? limit});
  Future<Either<String, List<DataItemModel>>> searchItem(
      {int? offset, int? limit, String? keywoard});
  Future<Either<String, List<DataItemModel>>> getItemListByCategoryId(
      {int offset = 0, int limit = 1000, required String? categoryId});
}

@LazySingleton(as: IITemFacae)
class ItemRepoistory extends IITemFacae {
  Dio dio = Dio();
  final itemController = Get.put(ItemController());

  Options options =
      Options(headers: {"AccessKey": Constants().accessKeyUltimo});

  @override
  Future<Either<String, List<DataItemModel>>> getItemLazyLoading(
      {int? offset, int? limit}) async {
    List<DataItemModel> _tempData = <DataItemModel>[];

    int? counterOffset = offset;

    try {
      do {
        Response response;
        response = await dio.get(
            '${Constants().baseUrlProfile}api,SPGApps.vm?cmd=2&loccode=${Constants.locCode}&limit=1&offset=$counterOffset&sortby=updateDate&sortdirection=desc');
        List jsonData = json.decode(response.data.toString());

        List<DataItemModel> data =
            jsonData.map((m) => DataItemModel.fromJson(m)).toList();
        if (data.length == 0) {
          break;
        }
        data.forEach((element) {
          double? data = double.tryParse(element.qty!);
          if (data != null) {
            if (data > 0) {
              _tempData.add(element);
            }
          }
        });
        counterOffset = counterOffset! + 1;
      } while (_tempData.length < limit!);
      itemController.setOffset(counterOffset!);
      return right(_tempData);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<DataItemModel>>> getItemListByCategoryId(
      {int offset = 0, int limit = 1000, required String? categoryId}) async {
    List<DataItemModel> _tempData = <DataItemModel>[];
    Response response;
    try {
      response = await dio.get(
          "${Constants().baseUrlOtherApi}api,SPGApps.vm?cmd=2&loccode=${Constants.locCode}&kategoriid=${categoryId}&limit=$limit&offset=$offset");
      // response = await dio.get(
      //     "${Constants().baseUrlProductionBackup}api,SPGApps.vm?cmd=2&loccode=${Constants.locCode}&kategoriid=${categoryId}&limit=$limit&offset=$offset");

      List jsonData = json.decode(response.data);

      List<DataItemModel> data =
          jsonData.map((m) => DataItemModel.fromJson(m)).toList();

      data.removeWhere((obj) => (obj.qty == "null" ||
          obj.qty == "" ||
          obj.qty == " " ||
          double.parse(obj.qty!).toStringAsFixed(0) == "0"));

      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<DataItemModel>>> searchItem(
      {int? offset, int? limit, String? keywoard}) async {
    List<DataItemModel> _tempData = <DataItemModel>[];
    try {
      Response response;
      response = await dio.get(
          '${Constants().baseUrlOtherApi}api,SPGApps.vm?cmd=2&loccode=${Constants.locCode}&limit=$limit&itemname=$keywoard&offset=$offset');
      List jsonData = json.decode(response.data);

      List<DataItemModel> data =
          jsonData.map((m) => DataItemModel.fromJson(m)).toList();

      data.forEach((element) {
        double? data = double.tryParse(element.qty!);
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
}
