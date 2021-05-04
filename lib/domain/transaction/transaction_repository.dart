import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/transaction/models/transaction_req_res.dart';
import 'package:roomart/domain/transaction/trans_item/midtrans_status_data_model.dart';
import 'package:roomart/domain/transaction/trans_item/trans_request.dart';
import 'package:roomart/domain/transaction/trans_item/trans_response.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model_v2.dart';
import 'package:roomart/utils/constants.dart';

abstract class ITransactionFacade {
  Future<Either<String, List<TransactionDataModel>>>
      getHistoryTransactionByStatus(TransactionHistoryRequest request);
  Future<Either<String, List<TransactionDataModelV2>>>
      getHistoryTransactionByStatusV2(TransactionHistoryRequest request);
  Future<Either<String, List<TransactionDataModelV2>>>
      getHistoryTransactionByStatusVDO(TransactionHistoryRequest request);
  Future<Either<String, TransResponse>> addNewTransaction(TransRequest request);
  Future<Either<String, MidtransStatusDataModel>> checkMidtransPaymentStatus(
      String request);
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

  @override
  Future<Either<String, TransResponse>> addNewTransaction(
      TransRequest request) async {
    Response response;

    try {
      response = await dio.post(
          "${Constants().getUltimoBaseUrl}/RoomartOrder/AddTransaction",
          data: request.toJson(),
          options: Options(
            headers: {"AccessKey": Constants().accessKeyUltimo},
          ));
      final _data = TransResponse.fromJson(response.data);

      return right(_data);
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, MidtransStatusDataModel>> checkMidtransPaymentStatus(
      String request) async {
    Response response;

    String credentials = Constants().credentialBaseAuthMidtrans;
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String encoded = stringToBase64.encode(credentials);

    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      HttpHeaders.authorizationHeader: encoded,
    };

    try {
      response = await dio.get(
          "${Constants().midtransBaseAPIProduction}/v2/$request/status",
          options: Options(
            headers: headers,
          ));
      final _data = MidtransStatusDataModel.fromJson(response.data);
      if (_data.statusCode == "200") {
        return right(_data);
      }
      return left(_data.statusMessage);
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<TransactionDataModelV2>>>
      getHistoryTransactionByStatusVDO(
          TransactionHistoryRequest request) async {
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
