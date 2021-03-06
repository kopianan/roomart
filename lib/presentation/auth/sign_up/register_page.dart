import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/domain/auth/register_data._model.dart';
import 'package:roomart/domain/auth/register_request_model.dart';
import 'package:roomart/domain/models/user/user_roomart_data_model.dart';
import 'package:roomart/presentation/config_widgets/widget_collection.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/my_color.dart';

import '../../../injection.dart';

class RegisterPage extends StatefulWidget {
  static final String TAG = '/register_page';
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _fullName = TextEditingController();
  TextEditingController _dateOfBirth = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  DateTime date;
  double height = 30;
  final authCubit = getIt<AuthCubit>();

  void clearTextEditing() {
    _fullName.clear();
    _dateOfBirth.clear();
    _email.clear();
    _phone.clear();
    _password.clear();
    _confirmPassword.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: BlocProvider(
        create: (context) => authCubit,
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              loading: (e) {},
              error: (e) {
                print(e.error);
                Get.showSnackbar(GetBar(
                  message: e.error,
                  duration: Duration(seconds: 4),
                ));
              },
              onRegisterToRoomart: (e) {
                RegisterRequestModel user = RegisterRequestModel(
                    token: Constants().tokenUltimo,
                    password: _password.text,
                    parentID: Constants().resellerParentID,
                    isReseller: "false",
                    fullname: e.user.fullName,
                    email: e.user.email,
                    customerID: e.user.userId);

                authCubit.registerNewUser(user);
              },
              onRegiserUser: (e) {
                clearTextEditing();
                Get.back();
                Get.showSnackbar(GetBar(
                  duration: Duration(seconds: 4),
                  message: "Success register user",
                ));
              },
            );
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverToBoxAdapter(
                      child: Column(
                    children: [
                      getLogoOnAuthPage,
                    ],
                  )),
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    CustomTextField(
                      icon: Icons.person,
                      label: "Name",
                      fullName: _fullName,
                      hint: "Fullname",
                    ),
                    SizedBox(height: height),
                    CustomTextField(
                      icon: Icons.date_range_outlined,
                      label: "Date of birth",
                      fullName: _dateOfBirth,
                      readOnly: true,
                      hint: "Date of birth",
                      onTap: () async {
                        date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1970, 1, 1),
                          lastDate: DateTime.now(),
                        );
                        String formatted =
                            DateFormat("dd MMMMM yyyy").format(date);
                        _dateOfBirth.text = formatted;
                      },
                    ),
                    SizedBox(height: height),
                    CustomTextField(
                      icon: Icons.email,
                      label: "Email",
                      fullName: _email,
                      hint: "Email",
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: height),
                    CustomTextField(
                      icon: Icons.phone_android_rounded,
                      label: "Phone",
                      fullName: _phone,
                      hint: "Phone Number",
                      textInputType: TextInputType.phone,
                    ),
                    SizedBox(height: height),
                    CustomPasswordTextField(
                      icon: Icons.lock,
                      label: "Password",
                      fullName: _password,
                      hint: "Password",
                      textInputType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: height),
                    CustomPasswordTextField(
                      icon: Icons.lock,
                      label: "Re-type password",
                      fullName: _confirmPassword,
                      hint: "Confirmation password",
                      textInputType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: height),
                    state.maybeMap(
                      orElse: () {
                        return DefaultButton1(
                          onPressed: () {
                            RegisterDataModel registerModel = RegisterDataModel(
                                dateTime: date,
                                email: _email.text,
                                name: _fullName.text,
                                password: _password.text,
                                phone: _phone.text);
                            authCubit.registerToRoomart(registerModel);
                          },
                          text: "Register user",
                          color: button1,
                        );
                      },
                      loading: (e) {
                        return LoadingButton1();
                      },
                    ),
                    SizedBox(height: 30),
                  ]))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key key,
      @required this.hint,
      @required this.fullName,
      @required this.label,
      @required this.icon,
      this.readOnly = false,
      this.textInputType,
      this.onTap});

  final TextEditingController fullName;
  final String hint;
  final String label;
  final IconData icon;
  final bool readOnly;
  final Function onTap;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      onTap: onTap,
      keyboardType: textInputType,
      controller: fullName,
      decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
          hintText: hint),
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({
    Key key,
    @required this.hint,
    @required this.fullName,
    @required this.label,
    @required this.icon,
    this.textInputType,
  });

  final TextEditingController fullName;
  final String hint;
  final String label;
  final IconData icon;
  final TextInputType textInputType;

  @override
  _CustomPasswordTextFieldState createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      keyboardType: widget.textInputType,
      controller: widget.fullName,
      decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          suffixIcon: IconButton(
            icon: Icon((obsecure) ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              obsecure = !obsecure;
              setState(() {});
            },
          ),
          labelText: widget.label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
          hintText: widget.hint),
    );
  }
}
