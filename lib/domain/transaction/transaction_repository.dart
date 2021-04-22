import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/transaction/models/transaction_req_res.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/utils/constants.dart';

abstract class ITransactionFacade {
  Future<Either<String, List<TransactionDataModel>>>
      getHistoryTransactionByStatus(TransactionHistoryRequest request);
}

@LazySingleton(as: ITransactionFacade)
class TransactionRepository extends ITransactionFacade {
  Dio dio = Dio();

  Options options =
      Options(headers: {"AccessKey": Constants().accessKeyUltimo});

  @override
  Future<Either<String, List<TransactionDataModel>>>
      getHistoryTransactionByStatus(TransactionHistoryRequest request) async {
    Response response;

    try {
      response = await dio.post(
          "${Constants().getUltimoBaseUrl}/RoomartOrder/GetAllTransactionByCustomerID",
          data: request.toJson(),
          options: Options(
            headers: {"AccessKey": Constants().accessKeyUltimo},
          ));
      List data = response.data;
      print(data.length);
      final _result =
          data.map((md) => TransactionDataModel.fromJson(md)).toList();

      return right(_result);
    } catch (e) {
      return left(e.toString());
    }
  }
}
