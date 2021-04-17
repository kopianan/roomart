import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/domain/auth/register_data._model.dart';
import 'package:roomart/domain/auth/register_request_model.dart';
import 'package:roomart/domain/models/user/user_roomart_data_model.dart';
import 'package:roomart/utils/constants.dart';

import '../../injection.dart';

class RegisterPage extends StatefulWidget {
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
  double height = 25;
  final authCubit = getIt<AuthCubit>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => authCubit,
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (e) {},
              loading: (e) {},
              error: (e) {
                print(e);
              },
              onRegisterToRoomart: (e) {
                print(e);
              },
              onRegiserUser: (e) {},
            );
          },
          builder: (context, state) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Text("Register",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(Constants.icon_launcher),
                    ),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    CustomTextField(
                      label: "Name",
                      fullName: _fullName,
                      hint: "Fullname",
                    ),
                    SizedBox(height: height),
                    CustomTextField(
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
                            DateFormat('dd-MMMM-yyyy').format(date);
                        _dateOfBirth.text = formatted;
                      },
                    ),
                    SizedBox(height: height),
                    CustomTextField(
                      label: "Email",
                      fullName: _email,
                      hint: "Email",
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: height),
                    CustomTextField(
                      label: "Phone",
                      fullName: _phone,
                      hint: "Phone Number",
                      textInputType: TextInputType.phone,
                    ),
                    SizedBox(height: height),
                    CustomPasswordTextField(
                      label: "Password",
                      fullName: _password,
                      hint: "Password",
                      textInputType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: height),
                    CustomPasswordTextField(
                      label: "Re-type password",
                      fullName: _confirmPassword,
                      hint: "Confirmation password",
                      textInputType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: height),
                    ElevatedButton(
                        onPressed: () {
                          RegisterDataModel registerModel = RegisterDataModel(
                              dateTime: date,
                              email: _email.text,
                              name: _fullName.text,
                              password: _password.text,
                              phone: _phone.text);
                          authCubit.registerToRoomart(registerModel);
                        },
                        child: Text("Register User")),
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
      this.readOnly = false,
      this.textInputType,
      this.onTap});

  final TextEditingController fullName;
  final String hint;
  final String label;

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
    this.textInputType,
  });

  final TextEditingController fullName;
  final String hint;
  final String label;
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
