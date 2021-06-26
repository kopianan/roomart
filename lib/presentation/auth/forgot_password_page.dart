import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/presentation/config_widgets/widget_collection.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/my_color.dart';

import '../../injection.dart';

class ForgotPasswordPage extends StatefulWidget {
  static final String TAG = '/forgot_password_page';
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();
  final AuthCubit authCubit = getIt<AuthCubit>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Forgot Password"),
        ),
        body: BlocProvider(
          create: (context) => authCubit,
          child: BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                loading: (e) {},
                error: (e) {
                  Get.showSnackbar(GetBar(
                    message: e.error,
                    duration: Duration(seconds: 2),
                    snackPosition: SnackPosition.TOP,
                  ));
                },
                onForgotPassword: (e) {
                  emailController.clear();
                  Get.showSnackbar(GetBar(
                    message: e.status,
                    duration: Duration(seconds: 2),
                    snackPosition: SnackPosition.TOP,
                  ));
                });
          }, builder: (context, state) {
            return SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Lupa Password",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )),
                    Column(
                      children: [getLogoOnAuthPage],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          validator: (e) {
                            if (!e!.isEmail) {
                              return "Email tidak valid";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              hintText: "Your email"),
                        ),
                      ),
                    ),
                    state.maybeMap(
                      orElse: () => Container(
                        margin: EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: double.infinity,
                          child: DefaultButton1(
                            text: "Send email",
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                authCubit.forgotPassword(emailController.text);
                              }
                            },
                            color: button1,
                          ),
                        ),
                      ),
                      loading: (e) => Container(
                        margin: EdgeInsets.only(top: 20),
                        child: SizedBox(
                            width: double.infinity, child: LoadingButton1()),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ));
  }
}
