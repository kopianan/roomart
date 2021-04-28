import 'package:get/get.dart';
import 'package:roomart/domain/user/user_data_model.dart';

class AuthController extends GetxController {
  Rx<UserDataModel> userDataModel = UserDataModel().obs;

  void setDataModel(UserDataModel userDataModel) {
    this.userDataModel.value = userDataModel;
  }

  UserDataModel get getUserDataModel => this.userDataModel.value;
}
