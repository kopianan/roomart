import 'package:get/get.dart';
import 'package:roomart/domain/models/discount/discount_data_model.dart';
import 'package:roomart/domain/user/user_data_model.dart';

class AuthController extends GetxController {
  Rx<UserDataModel> userDataModel = UserDataModel().obs;
  RxDouble userBalance = 0.0.obs;
  List<DiscountDataModel> listDiscount = <DiscountDataModel>[];

  void setDiscount(List<DiscountDataModel> list) {
    this.listDiscount = list;
  }

  void setBalance(String balance) {
    try {
      var _balance = double.tryParse(balance);
      userBalance.value = _balance;
    } catch (e) {
      userBalance.value = 0.0;
    }
  }

  void setDataModel(UserDataModel userDataModel) {
    this.userDataModel.value = userDataModel;
  }

  List<DiscountDataModel> getDiscountList(String userTypeId) {
    DateTime dateTime = DateTime.now();
    List<DiscountDataModel> list = [];
    listDiscount.forEach((element) {
      if (element.customerTypeId == userTypeId) {
        final startTime = DateTime.parse(element.eventEndDate);
        final endTime = DateTime.parse(element.eventBeginDate);
        if (dateTime.isAfter(startTime) && dateTime.isBefore(endTime)) {
          list.add(element);
        }
      } else {}
    });
    return list;
  }

  UserDataModel get getUserDataModel => this.userDataModel.value;
  String get getBalance => this.userBalance.toString();
}
