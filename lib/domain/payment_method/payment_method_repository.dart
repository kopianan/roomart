import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/payment_method/payment_method_data_model.dart';
import 'package:roomart/utils/constants.dart';

abstract class IPaymentMethodFacade {
  Future<Either<String, List<PaymentMethodDataModel>>> getPaymentMethod();
}

@LazySingleton(as: IPaymentMethodFacade)
class ItemRepoistory extends IPaymentMethodFacade {
  Dio dio = Dio();

  Options options =
      Options(headers: {"AccessKey": Constants().accessKeyUltimo});

  @override
  Future<Either<String, List<PaymentMethodDataModel>>>
      getPaymentMethod() async {
    Response response;
    try {
      response =
          await dio.get("${Constants().baseUrlOtherApi}api,POSAPI.vm?cmd=4");

      List jsonData = json.decode(response.data);

      List<PaymentMethodDataModel> data =
          jsonData.map((m) => PaymentMethodDataModel.fromJson(m)).toList();

      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }
}
