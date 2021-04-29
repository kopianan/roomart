import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/application/payment/payment_controller.dart';
import 'package:roomart/application/payment/payment_cubit.dart';
import 'package:roomart/domain/core/payment_method_enum.dart';
import 'package:roomart/domain/payment_method/payment_method_data_model.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';

import '../../injection.dart';

class PaymentMethodPage extends StatefulWidget {
  static final String TAG = '/payment_method_page';
  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  final authCubit = getIt<AuthCubit>();
  final paymentCubit = getIt<PaymentCubit>();
  final userController = Get.put(AuthController());
  final cartController = Get.put(CartController());
  final paymentController = Get.put(PaymentController());

  UserDataModel userDataModel;
  @override
  void initState() {
    userDataModel = userController.getUserDataModel;
    super.initState();
  }

  PaymentMethodDataModel selectedPayment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
      ),
      body: GetBuilder<AuthController>(
        builder: (auth) => MultiBlocProvider(
            providers: [
              BlocProvider<AuthCubit>(
                create: (BuildContext context) => authCubit
                  ..getArBalance(userController.getUserDataModel.userId),
              ),
              BlocProvider<PaymentCubit>(
                  create: (BuildContext context) =>
                      paymentCubit..getPaymentMethodList())
            ],
            child: MultiBlocListener(
                listeners: [
                  BlocListener<AuthCubit, AuthState>(
                    listener: (context, state) {
                      print(state);
                      state.maybeMap(
                          orElse: () {},
                          onGetArBalance: (e) {
                            auth.setBalance(e.balancd);
                          });
                    },
                  ),
                  BlocListener<PaymentCubit, PaymentState>(
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () {},
                        onGetPaymentMethod: (e) {
                          paymentController.setPaymentMethodList(e.method);
                        },
                      );
                    },
                  ),
                ],
                child: Container(
                  child: Column(
                    children: [
                      Card(
                        child: ListTile(
                          title: Text("Point saya"),
                          trailing: Text(Formatter()
                              .formatStringCurrency(auth.getBalance)),
                        ),
                      ),
                      BlocBuilder<PaymentCubit, PaymentState>(
                        builder: (context, state) {
                          return state.maybeMap(
                              orElse: () => SizedBox(),
                              loading: (e) =>
                                  Center(child: CircularProgressIndicator()),
                              onGetPaymentMethod: (e) {
                                var _method = paymentController
                                    .getFilteredPaymentMethodByUserType(
                                        userDataModel.typeIds);
                                return ListView(
                                  shrinkWrap: true,
                                  children: _method
                                      .map((e) =>
                                          RadioListTile<PaymentMethodDataModel>(
                                              value: e,
                                              groupValue: selectedPayment,
                                              title: Text(e.name),
                                              subtitle: checkSubtitle(e),
                                              onChanged: (val) {
                                                _onChanged(val, auth);
                                              }))
                                      .toList(),
                                );
                              });
                        },
                      )
                    ],
                  ),
                ))),
      ),
    );
  }

  Text checkSubtitle(PaymentMethodDataModel e) {
    if (e.code == describeEnum(paymentEnum.MID))
      return Text(Constants().radioButtonMidtrans);
    else
      return Text(e.description.toLowerCase());
  }

  _onChanged(PaymentMethodDataModel val, AuthController auth) {
    if (val.code == describeEnum(paymentEnum.CREDIT)) {
      if (double.parse(auth.getBalance) <
          double.parse(cartController.getCartSubTotal())) {
        Get.showSnackbar(GetBar(
          duration: Duration(seconds: 3),
          message: "Saldo tidak cukup",
        ));
      } else {
        setState(() {
          selectedPayment = val;
        });
      }
    } else {
      setState(() {
        selectedPayment = val;
      });
    }
  }
}
