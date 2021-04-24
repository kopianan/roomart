import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/transaction/models/transaction_req_res.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model_v2.dart';
import 'package:roomart/utils/constants.dart';

abstract class ITransactionFacade {
  Future<Either<String, List<TransactionDataModel>>>
      getHistoryTransactionByStatus(TransactionHistoryRequest request);
  Future<Either<String, List<TransactionDataModelV2>>>
      getHistoryTransactionByStatusV2(TransactionHistoryRequest request);
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
      final _result =
          data.map((md) => TransactionDataModel.fromJson(md)).toList();

      return right(_result);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<TransactionDataModelV2>>>
      getHistoryTransactionByStatusV2(TransactionHistoryRequest request) async {
    Response response;

    try {
      response = await dio.get(
        "${Constants().getBaseUrlProduction}api,SPGApps.vm?cmd=4&txtype=SI&custcode=${request.customerId}&sortdate=desc&limit=${request.limit}&offset=${request.offset}",
      );
      List data = json.decode(response.data);
      List<TransactionDataModelV2> _result =
          data.map((md) => TransactionDataModelV2.fromJson(md)).toList();

      final _filtered = _result
          .where((element) => (element.status == request.status))
          .toList();
      return right(_filtered);
    } catch (e) {
      return right(<TransactionDataModelV2>[]);
    }
  }
}
