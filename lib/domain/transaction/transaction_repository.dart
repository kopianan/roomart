import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/transaction/models/balance_history_model.dart';
import 'package:roomart/domain/transaction/models/payment_conf_data_model.dart';
import 'package:roomart/domain/transaction/models/transaction_req_res.dart';
import 'package:roomart/domain/transaction/trans_item/bank_data_model.dart';
import 'package:roomart/domain/transaction/trans_item/midtrans_status_data_model.dart';
import 'package:roomart/domain/transaction/trans_item/trans_request.dart';
import 'package:roomart/domain/transaction/trans_item/trans_response.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model_v2.dart';
import 'package:roomart/utils/constants.dart';

import 'full_transaction_data_model.dart';

abstract class ITransactionFacade {
  Future<Either<String, List<TransactionDataModel>>>
      getHistoryTransactionByStatus(TransactionHistoryRequest request);

  Future<Either<String, List<TransactionDataModel>>>
      getHistoryTransactionByMultipleStatus(TransactionHistoryRequest request);
  Future<Either<String, List<TransactionDataModelV2>>>
      getHistoryTransactionByStatusV2(TransactionHistoryRequest request);
  Future<Either<String, List<FullTransactionDataModel>>>
      getHistorySentTransaction(TransactionHistoryRequest request);
  Future<Either<String, List<TransactionDataModelV2>>>
      getHistoryTransactionByStatusVDO(TransactionHistoryRequest request);
  Future<Either<String, TransResponse>> addNewTransaction(
      TransRequest? request);
  Future<Either<String, String>> cancelTransaction(
      {String? custId, String? invoiceNumber});
  Future<Either<String, List<BankDataModel>>> getBankData();
  Future<Either<String, String>> confirmPayment(PaymentConfDataModel data);
  Future<Either<String, List<BalanceHistoryModel>>> getBalanceHistory(
      int limit, int offset, String userId);
  Future<Either<String?, MidtransStatusDataModel>> checkMidtransPaymentStatus(
      String? request);

  Future<Either<String, List<FullTransactionDataModel>>> getAllTransaction(
      String? userId);
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

// http://cloud.erp.web.id:8080/padasuka/weblayer/template/api,SPGApps.vm?cmd=4&txtype=SI&custcode=DM152204830857645176904&sortdate=desc
    try {
      response = await dio.get(
        "${Constants().baseUrlOtherApi}api,SPGApps.vm?cmd=4&txtype=SI&custcode=${request.customerId}&sortdate=desc&limit=${request.limit}&offset=${request.offset}",
      );
      List data = json.decode(response.data);
      List<TransactionDataModelV2> _result =
          data.map((md) => TransactionDataModelV2.fromJson(md)).toList();

      return right(_result);
    } catch (e) {
      return right(<TransactionDataModelV2>[]);
    }
  }

  @override
  Future<Either<String, TransResponse>> addNewTransaction(
      TransRequest? request) async {
    Response response;

    try {
      response = await dio.post(
          "${Constants().getUltimoBaseUrl}/RoomartOrder/AddTransaction",
          data: request!.toJson(),
          options: Options(
            headers: {"AccessKey": Constants().accessKeyUltimo},
          ));
      final _data = TransResponse.fromJson(response.data);

      return right(_data);
    } on DioError catch (e) {
      print(e);
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String?, MidtransStatusDataModel>> checkMidtransPaymentStatus(
      String? request) async {
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
        "${Constants().baseUrlOtherApi}api,SPGApps.vm?cmd=4&txtype=SI&custcode=${request.customerId}&sortdate=desc&limit=${request.limit}&offset=${request.offset}",
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
  Future<Either<String, List<TransactionDataModel>>>
      getHistoryTransactionByMultipleStatus(
          TransactionHistoryRequest request) async {
    List<Response> response;
    List<TransactionDataModel> filtered = <TransactionDataModel>[];

    var _st = request.status!;
    List<String> _statusList;
    _statusList = _st.split(",");

    var listOfFuture = _statusList.map((e) {
      var _newReq = request.copyWith(status: e);
      return dio.post(
          "${Constants().getUltimoBaseUrl}/RoomartOrder/GetAllTransactionByCustomerID",
          data: _newReq.toJson(),
          options: Options(
            headers: {"AccessKey": Constants().accessKeyUltimo},
          ));
    }).toList();

    try {
      response = await Future.wait(listOfFuture);

      response.forEach((element) {
        List _data = element.data;
        var _result =
            _data.map((md) => TransactionDataModel.fromJson(md)).toList();

        filtered.addAll(_result);
      });

      return right(filtered);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<FullTransactionDataModel>>>
      getHistorySentTransaction(TransactionHistoryRequest request) async {
    Response response;

    try {
      response = await dio.get(
        "${Constants().baseUrlOtherApi}api,SPGApps.vm?cmd=4&custcode=${request.customerId}&sortdate=desc&limit=${request.limit}&offset=${request.offset}",
      );

      List data = json.decode(response.data);
      print("panjang" + data.length.toString());
      List<FullTransactionDataModel> _result =
          data.map((md) => FullTransactionDataModel.fromJson(md)).toList();

      return right(_result);
    } catch (e) {
      return right(<FullTransactionDataModel>[]);
    }
  }

  @override
  Future<Either<String, List<FullTransactionDataModel>>> getAllTransaction(
      String? userId) async {
    Response response;

    try {
      response = await dio.get(
          "${Constants().baseUrlOtherApi}api,SPGApps.vm?cmd=4&custcode=${userId}&sortdate=desc");
      print(response);
      if (response.statusCode == 200) {
        var replace2 = response.data.replaceAll(RegExp(r'\t'), " ");

        List responseJson = await json.decode(replace2.trim());

        final data = responseJson
            .map((md) => new FullTransactionDataModel.fromJson(md))
            .toList();

        return right(data);
      } else {
        return left("Something Wrong");
      }
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> cancelTransaction({
    String? custId,
    String? invoiceNumber,
  }) async {
    Response response;
    var data = {
      "Token": Constants().tokenUltimo,
      "CustomerID": custId,
      "InvoiceNumber": invoiceNumber
    };
    try {
      response = await dio.post(
          "${Constants().getUltimoBaseUrl}/RoomartOrder/CancelOrder",
          data: data,
          options: Options(
            headers: {"AccessKey": Constants().accessKeyUltimo},
          ));

      return right("Berhasil Hapus Transaksi");
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<BankDataModel>>> getBankData() async {
    Response response;
    try {
      response = await dio.post(
        "${Constants().getUltimoBaseUrl}/Payment/GetBankTransfer",
        data: {"Token": Constants().tokenUltimo2},
        options: Options(
          headers: {"AccessKey": Constants().accessKeyUltimo},
        ),
      );
      if (response.statusCode == 200) {
        List responseJson = response.data;
        List<BankDataModel> data =
            responseJson.map((md) => new BankDataModel.fromJson(md)).toList();

        return right(data);
      } else {
        return left("Something wrong");
      }
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> confirmPayment(
      PaymentConfDataModel data) async {
    Response response;
    try {
      response = await dio.post(
          "${Constants().getUltimoBaseUrl}/RoomartOrder/ConfirmPayment",
          data: data.toJson(),
          options: Options(
            headers: {"AccessKey": Constants().accessKeyUltimo},
          ));
      if (response.statusCode == 200) {
        return right(response.data.toString());
      } else {
        return right(response.data.toString());
      }
    } catch (e) {
      return left("Pembayaran Gagal dikonfirmasi");
    }
  }

  @override
  Future<Either<String, List<BalanceHistoryModel>>> getBalanceHistory(
      int limit, int offset, String userId) async {
    Response response;

    try {
      response = await dio.get(
          "${Constants().baseUrlProfile}api,AR.vm?cmd=1&custid=${userId}&limit=$limit&offset=$offset");

      var _rawData =
          response.data.replaceAll("<br>", "").replaceAll(RegExp(r'\t'), " ");

      List _jsonList = json.decode(_rawData);
      var _data = _jsonList
          .map<BalanceHistoryModel>((e) => BalanceHistoryModel.fromJson(e))
          .toList();
      print(_data.take(1).last);

      return right(_data);
    } catch (e) {
      return left(e.toString());
    }
  }
}
