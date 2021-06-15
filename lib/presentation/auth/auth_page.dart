import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/infrastructure/core/pref.dart';
import 'package:roomart/presentation/auth/sign_up/register_page.dart';
import 'package:roomart/presentation/config_widgets/widget_collection.dart';
import 'package:roomart/presentation/splash_screen/splash_screen_page.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/my_color.dart';
import 'package:roomart/presentation/auth/forgot_password_page.dart';

import '../../injection.dart';

class AuthPage extends StatefulWidget {
  static final String TAG = '/auth_page';
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final authController = Get.put(AuthController());
  bool isObsecure = true;

  final authCubit = getIt<AuthCubit>();
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
        child: BlocProvider(
          create: (context) => authCubit,
          child: BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                loading: (e) {},
                error: (e) {
                  // Fluttertoast.showToast(
                  //   msg: e.error.toString(),
                  //   gravity: ToastGravity.BOTTOM,
                  // );
                  Get.showSnackbar(
                    GetBar(
                      message: e.error.toString(),
                      snackPosition: SnackPosition.BOTTOM,
                      duration: Duration(seconds: 3),
                    ),
                  );
                  print(e);
                },
                onLoginUser: (e) {
                  Get.showSnackbar(GetBar(
                    message: "Login successful",
                    duration: Duration(seconds: 3),
                  ));
                  Pref().saveUserDataToLocal(e.user.toJson());
                  authController.setDataModel(e.user);
                  Get.offAllNamed(SplashScreenPage.TAG);
                });
          }, builder: (context, state) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // Container(
                      //   alignment: Alignment.topLeft,
                      //   margin: EdgeInsets.only(top: 15),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Text(
                      //         "Welcome",
                      //         style: TextStyle(
                      //             fontSize: 30, fontWeight: FontWeight.bold),
                      //       ),
                      //       Text(
                      //         "Silahkan register atau login untuk bisa bertransaksi.",
                      //         style: TextStyle(fontWeight: FontWeight.w300),
                      //       ),
                      //     ],
                      //   ),
                      // ),
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
                            state.maybeMap(
                              orElse: () => Container(
                                width: double.infinity,
                                height: 45,
                                child: DefaultButton1(
                                  onPressed: () {
                                    authCubit.loginUser(
                                        email.text, password.text);
                                  },
                                  text: "Sign in",
                                  color: button1,
                                ),
                              ),
                              loading: (e) => LoadingButton1(),
                            ),
                            SizedBox(height: 20),
                            Container(
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(ForgotPasswordPage.TAG);
                                },
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
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
            );
          }),
        ),
      ),
    );
  }
}
