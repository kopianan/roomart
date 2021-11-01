import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/application/payment/payment_controller.dart';
import 'package:roomart/application/payment/payment_cubit.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/core/payment_method_enum.dart';
import 'package:roomart/domain/payment_method/payment_method_data_model.dart';
import 'package:roomart/domain/transaction/trans_item/trans_request.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';
import 'package:roomart/utils/my_color.dart';

import '../../injection.dart';

class PaymentMethodPage extends StatefulWidget {
  static final String TAG = '/payment_method_page';
  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  final AuthCubit authCubit = getIt<AuthCubit>();
  final PaymentCubit paymentCubit = getIt<PaymentCubit>();
  final TransactionCubit transCubit = getIt<TransactionCubit>();
  final userController = Get.put(AuthController());
  final cartController = Get.put(CartController());
  final paymentController = Get.put(PaymentController());

  TransRequest? transRequest;
  UserDataModel? userDataModel;
  @override
  void initState() {
    userDataModel = userController.getUserDataModel;
    selectedPayment = paymentController.getSelectedPaymentMethod;

    super.initState();
  }

  PaymentMethodDataModel? selectedPayment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
      ),
      body: GetBuilder<AuthController>(
        builder: (auth) => MultiBlocProvider(
            providers: [
              BlocProvider<PaymentCubit>(
                  create: (BuildContext context) =>
                      paymentCubit..getPaymentMethodList()),
            ],
            child: MultiBlocListener(
                listeners: [
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlocProvider(
                            create: (context) => authCubit
                              ..getArBalance(
                                  userController.getUserDataModel!.userId),
                            child: BlocConsumer<AuthCubit, AuthState>(
                              listener: (context, state) {
                                state.maybeMap(
                                    orElse: () {},
                                    onGetArBalance: (e) {
                                      auth.setBalance(e.balancd);
                                    });
                              },
                              builder: (context, state) {
                                return Card(
                                  elevation: 5,
                                  child: ListTile(
                                    title: Text(
                                      "Saldo Saya",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: BlocBuilder<AuthCubit, AuthState>(
                                        builder: (context, state) {
                                      return state.maybeMap(
                                        orElse: () {
                                          return CircularProgressIndicator();
                                        },
                                        error: (e) {
                                          return IconButton(
                                            onPressed: () {
                                              authCubit.getArBalance(
                                                  userController
                                                      .getUserDataModel!
                                                      .userId);
                                            },
                                            icon: Icon(Icons.refresh),
                                            iconSize: 25,
                                          );
                                        },
                                        onGetArBalance: (e) {
                                          return Text(
                                            Formatter().formatStringCurrency(
                                                e.balancd),
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          );
                                        },
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                          Divider(
                            height: 10,
                          ),
                          BlocBuilder<PaymentCubit, PaymentState>(
                            builder: (context, state) {
                              return state.maybeMap(
                                  orElse: () => SizedBox(),
                                  loading: (e) => Center(
                                      child: CircularProgressIndicator()),
                                  onGetPaymentMethod: (e) {
                                    var _method = paymentController
                                        .getFilteredPaymentMethodByUserType(
                                            userDataModel!.typeIds);
                                    return ListView(
                                      shrinkWrap: true,
                                      children: _method
                                          .map((e) => RadioListTile<
                                                  PaymentMethodDataModel>(
                                              value: e,
                                              groupValue: selectedPayment,
                                              title: Text(e.name!),
                                              subtitle: checkSubtitle(e),
                                              onChanged: (val) {
                                                _onChanged(val!, auth);
                                                //
                                              }))
                                          .toList(),
                                    );
                                  });
                            },
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        child: DefaultButton1(
                            color: button1,
                            text: "Kembali ke pembayaran",
                            onPressed: () {
                              Get.back();
                            }),
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
      return Text(e.description!.toLowerCase());
  }

  _onChanged(PaymentMethodDataModel val, AuthController auth) {
    if (val.code == describeEnum(paymentEnum.DEPO)) {
      if (double.parse(auth.getBalance) <
          double.parse(cartController
              .getCartSubTotalDouble(isReseller: auth.checkIfReseller())
              .toString())) {
        Get.showSnackbar(GetBar(
          duration: Duration(seconds: 3),
          message: "Saldo / poin tidak cukup",
        ));
      } else {
        paymentController.setSelectedPaymentMethod(val);
        setState(() {
          selectedPayment = val;
        });
      }
    } else if (val.code == describeEnum(paymentEnum.CREDIT)) {
      if (auth.checkIfReseller() &&
          auth.getUserDataModel!.typeIds == Constants().customerTypeReseller2) {
        paymentController.setSelectedPaymentMethod(val);
        setState(() {
          selectedPayment = val;
        });
      } else {
        Get.showSnackbar(GetBar(
          duration: Duration(seconds: 3),
          message: "Credit hanya untuk customer yang telah ditentukan",
        ));
      }
    } else {
      paymentController.setSelectedPaymentMethod(val);
      setState(() {
        selectedPayment = val;
      });
    }
  }
}
