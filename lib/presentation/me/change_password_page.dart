import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/my_color.dart';

import '../../injection.dart';

class ChangePasswordPage extends StatefulWidget {
  static final String TAG = '/change_password_page';
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassowrd = TextEditingController();
  TextEditingController confPassowrd = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void clearController() {
    oldPassword.clear();
    newPassowrd.clear();
    confPassowrd.clear();
  }

  int labelFlex = 2;
  int valueFlex = 7;
  double height = 30;
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ganti Password"),
        ),
        body: BlocProvider(
          create: (context) => getIt<AuthCubit>(),
          child: BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              onChangePassword: (e) {
                clearController();
                Get.showSnackbar(GetBar(
                  message: "Berhasil ganti password",
                  duration: Duration(seconds: 4),
                ));
              },
              loading: (e) {},
              error: (value) => Get.showSnackbar(GetBar(
                message:value.error,
                duration: Duration(seconds: 4),
              )),
            );
          }, builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: height),
                          Row(
                            children: [
                              Expanded(
                                  flex: labelFlex,
                                  child: Text("Old\nPassword")),
                              SizedBox(width: 15),
                              ChangePasswordField(
                                validator: (e) {
                                  if (e.toString().isEmpty) {
                                    return "Must not be empty";
                                  }
                                  return null;
                                },
                                flex: valueFlex,
                                hint: "Your old password",
                                controller: this.oldPassword,
                              ),
                            ],
                          ),
                          SizedBox(height: height),
                          Row(
                            children: [
                              Expanded(
                                  flex: labelFlex, child: Text("New Password")),
                              SizedBox(width: 15),
                              ChangePasswordField(
                                validator: (e) {
                                  if (e.toString().isEmpty) {
                                    return "Tidak boleh kosong";
                                  }
                                  return null;
                                },
                                flex: valueFlex,
                                hint: "Your new password",
                                controller: this.newPassowrd,
                              ),
                            ],
                          ),
                          SizedBox(height: height),
                          Row(
                            children: [
                              Expanded(
                                  flex: labelFlex,
                                  child: Text("Re-type assword")),
                              SizedBox(width: 15),
                              ChangePasswordField(
                                validator: (e) {
                                  if (e.toString() != newPassowrd.text) {
                                    return "Passwort tidak cocok";
                                  }
                                  return null;
                                },
                                flex: valueFlex,
                                hint: "Confirmation your new password",
                                controller: this.confPassowrd,
                              ),
                            ],
                          ),
                          SizedBox(height: height),
                          Container(
                              width: double.infinity,
                              child: state.maybeMap(
                                orElse: () => buildBtnPrimaryBlue(context),
                                loading: (e) => LoadingButton1(),
                                error: (e) => buildBtnPrimaryBlue(context),
                                onChangePassword: (e) =>
                                    buildBtnPrimaryBlue(context),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ));
  }

  Widget buildBtnPrimaryBlue(BuildContext context) {
    return DefaultButton1(
      color: button1,
      onPressed: () {
        if (formKey.currentState!.validate()) {
          context.read<AuthCubit>().changePassword(
                authController.getUserDataModel!.email,
                newPassowrd.text,
                oldPassword.text,
              );
        }
      },
      text: "Change Password",
    );
  }
}

class ChangePasswordField extends StatefulWidget {
  const ChangePasswordField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.flex,
    required this.validator,
  }) : super(key: key);
  final String hint;
  final int flex;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  @override
  _ChangePasswordFieldState createState() => _ChangePasswordFieldState();
}

class _ChangePasswordFieldState extends State<ChangePasswordField> {
  bool obsecureText = true;
  TextEditingController? editingController;
  @override
  void initState() {
    editingController = widget.controller;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: TextFormField(
          validator: widget.validator,
          controller: editingController,
          obscureText: obsecureText,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: InkWell(
                  child: Icon(
                      (obsecureText) ? Icons.visibility : Icons.visibility_off),
                ),
                onPressed: () {
                  setState(() {
                    this.obsecureText = !this.obsecureText;
                  });
                }),
            border: UnderlineInputBorder(),
            hintText: this.widget.hint,
          )),
    );
  }
}
