import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/me/change_password_page.dart';

class ProfilePage extends StatefulWidget {
  static final String TAG = '/profile_page';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final authController = Get.put(AuthController());
  UserDataModel _user;
  @override
  void initState() {
    _user = authController.getUserDataModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildProfileInfo("Nama Lengkap", _user.fullName),
              buildProfileInfo("Email", _user.email),
              buildProfileInfo("Username", _user.userName),
              InkWell(
                  onTap: () {
                    Get.toNamed(ChangePasswordPage.TAG);
                  },
                  child:
                      buildProfileInfo("Password", "tap untuk ganti password")),
            ],
          )),
    );
  }

  Container buildProfileInfo(String label, String value) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 3),
          Text(
            value,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          Divider()
        ],
      ),
    );
  }
}
