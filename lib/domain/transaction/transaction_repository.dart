import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/category/category_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/utils/constants.dart';

abstract class ITransactionFacade {
  Future<Either<String, List<TransactionDataModel>>> getAllCategory(
      String userId);
}

@LazySingleton(as: ITransactionFacade)
class TransactionRepository extends ITransactionFacade {
  Dio dio = Dio();

  Options options =
      Options(headers: {"AccessKey": Constants().accessKeyUltimo});

  @override
  Future<Either<String, List<TransactionDataModel>>> getAllCategory(
      String userId) async {
    Response response;

    try {
      response = await dio.get(
          "${Constants().baseUrlProduction}api,SPGApps.vm?cmd=4&custcode=${userId}&sortdate=desc");

      List data = json.decode(response.data);

      final _result = data.map((md) => TransactionDataModel.fromJson(md)).toList();

      return right(_result);
    } catch (e) {
      return left(e.toString());
    }
  }
}
