import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/presentation/config_widgets/widget_collection.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/my_color.dart';

import 'sign_up/register_page.dart';
import 'sign_up/register_page.dart';

class AuthPage extends StatefulWidget {
  static final String TAG = '/auth_page';
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: Get.size.height -
              kToolbarHeight -
              kBottomNavigationBarHeight -
              kToolbarHeight,
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Silahkan register atau login untuk bisa bertransaksi.",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 25)),
                  Column(
                    children: [getLogoOnAuthPage],
                  ),
                  Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: email,
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              hintText: "Your email"),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          obscureText: isObsecure,
                          keyboardType: TextInputType.emailAddress,
                          controller: password,
                          textInputAction: TextInputAction.done,
                          onEditingComplete: () => node.requestFocus(),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              suffixIcon: IconButton(
                                icon: Icon(isObsecure
                                    ? Icons.visibility
                                    : Icons.visibility_off_rounded),
                                onPressed: () => setState(() {
                                  isObsecure = !isObsecure;
                                }),
                              ),
                              labelText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              hintText: "Your Password"),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          height: 45,
                          child: DefaultButton1(
                            onPressed: () {},
                            text: "Sign in",
                            color: button1,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  width: double.infinity,
                  height: 45,
                  child: DefaultButton1(
                    color: button2,
                    text: "Register",
                    onPressed: () {
                      Get.toNamed(RegisterPage.TAG);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}