import 'package:get/get.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/utils/constants.dart';

class AuthController extends GetxController {
  Rx<UserDataModel> userDataModel = UserDataModel().obs;
  RxDouble userBalance = 0.0.obs;

 
  void setBalance(String balance) {
    try {
      var _balance = double.tryParse(balance);
      userBalance.value = _balance;
    } catch (e) {
      userBalance.value = 0.0;
    }
  }

  bool checkIfReseller() {
    var _isReseller;
    if (getUserDataModel.typeIds == Constants().customerTypeReseller ||
        getUserDataModel.typeIds == Constants().customerTypeReseller2) {
      _isReseller = true;
    } else {
      _isReseller = false;
    }
    return _isReseller;
  }

  void setDataModel(UserDataModel userDataModel) {
    this.userDataModel.value = userDataModel;
  }

  void removeUserData() {
    this.userDataModel.call(null);
  }

  UserDataModel get getUserDataModel => this.userDataModel.value;
  String get getBalance => this.userBalance.toString();
}
