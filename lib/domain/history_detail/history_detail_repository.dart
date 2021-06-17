import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/history_detail/transaction_detail_v1.dart';
import 'package:roomart/domain/transaction/transaction_finished_data_model.dart';
import 'package:roomart/utils/constants.dart';

abstract class IHistoryDetailFacade {
  Future<Either<String, List<TransactionDetailV1>>> getHistoryDetailTransaction(
      String salesOrderId);
  Future<Either<String, List<TransactionFinishedDataModel>>>
      getHistoryFinishedTransaction(String salesTransactionID);
}

@LazySingleton(as: IHistoryDetailFacade)
class TransactionRepository extends IHistoryDetailFacade {
  Dio _dio = Dio();

  Options options =
      Options(headers: {"AccessKey": Constants().accessKeyUltimo});

  @override
  Future<Either<String, List<TransactionDetailV1>>> getHistoryDetailTransaction(
      String salesOrderId) async {
    Response response;
    try {
      response = await _dio.get(
          "${Constants().baseUrlOtherApi}api,SPGApps.vm?cmd=4&txtype=SO_DETAIL&txno=${salesOrderId}");

      List responseJson = json.decode(response.data);

      final data = responseJson
          .map((md) => new TransactionDetailV1.fromJson(md))
          .toList();

      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<TransactionFinishedDataModel>>>
      getHistoryFinishedTransaction(String salesTransactionID) async {
    Response response;

    try {
      response = await _dio.get(
          "${Constants().baseUrlOtherApi}api,SPGApps.vm?cmd=4&txtype=SI_DETAIL&txno=$salesTransactionID");

      List responseJson = json.decode(response.data);

      final data = responseJson
          .map((md) => new TransactionFinishedDataModel.fromJson(md))
          .toList();
      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }
}
