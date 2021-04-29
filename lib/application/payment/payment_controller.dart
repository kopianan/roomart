import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'package:roomart/domain/payment_method/payment_method_data_model.dart';
import 'package:roomart/domain/core/payment_method_enum.dart';
import 'package:roomart/utils/constants.dart';

class PaymentController extends GetxController {
  List<PaymentMethodDataModel> paymentMethodList =
      <PaymentMethodDataModel>[].obs;
  final constants = Constants();
  void setPaymentMethodList(List<PaymentMethodDataModel> method) {
    this.paymentMethodList = method;
  }

  List<PaymentMethodDataModel> getFilteredPaymentMethodByUserType(
      String currentUserTypeId) {
    List<PaymentMethodDataModel> usedPayment = <PaymentMethodDataModel>[];

    if (currentUserTypeId == constants.customerTypeReseller2) {
      usedPayment.assignAll(_filter(
          [paymentEnum.CREDIT, paymentEnum.DEPO, paymentEnum.TRANSF],
          paymentMethodList));
    } else if (currentUserTypeId == constants.customerTypeId) {
      usedPayment.assignAll(_filter([paymentEnum.TRANSF], paymentMethodList));
    } else {
      usedPayment.assignAll(
          _filter([paymentEnum.TRANSF, paymentEnum.DEPO], paymentMethodList));
    }
    usedPayment.insert(
        0,
        paymentMethodList.firstWhere(
            (element) => element.code == describeEnum(paymentEnum.MID)));
    // print(usedPayment);
    return usedPayment;
  }

  List<PaymentMethodDataModel> _filter(
      List<paymentEnum> list, List<PaymentMethodDataModel> full) {
    List<PaymentMethodDataModel> _used = <PaymentMethodDataModel>[];
    full.forEach((element) {
      list.forEach((en) {
        if (element.code == describeEnum(en)) {
          _used.add(element);
        }
      });
    });
    return _used;
  }
}
