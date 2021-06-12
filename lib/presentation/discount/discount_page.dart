import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/domain/models/discount/discount_code.dart';
import 'package:roomart/domain/models/discount/discount_data_model.dart';
import 'package:roomart/domain/models/discount/discount_request.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';

import '../../injection.dart';

class DiscountPage extends StatefulWidget {
  static final String TAG = '/discount_page';
  @override
  _DiscountPageState createState() => _DiscountPageState();
}

class _DiscountPageState extends State<DiscountPage> {
  final authController = Get.put(AuthController());
  final transController = Get.put(TransactionController());
  final cartController = Get.put(CartController());
  final textController = TextEditingController();
  UserDataModel user;
  final disCubit = getIt<AuthCubit>();
  final formKey = GlobalKey<FormState>();
  DiscountRequest req;
  @override
  void initState() {
    user = authController.getUserDataModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Discount"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(children: [
              GetBuilder<TransactionController>(
                builder: (trans) => BlocProvider(
                  create: (context) => disCubit,
                  child: BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                    state.maybeMap(
                        orElse: () {},
                        error: (e) {
                          print(e);
                        },
                        onCheckCouponCode: (e) {
                          if (double.parse(e.status) <= 0) {
                            Get.showSnackbar(GetBar(
                              message: "Code tidak valid",
                              duration: Duration(
                                seconds: 2,
                              ),
                              snackPosition: SnackPosition.TOP,
                            ));
                          } else {
                            var _dis = DiscountCode(
                                code: req.code, totalDiscount: e.status);
                            print(_dis);
                            trans.setSelectedDiscountCode(_dis);
                            Get.back();
                            Get.showSnackbar(GetBar(
                              title: "Discount applied",
                              message:
                                  Formatter().formatStringCurrency(e.status) +
                                      " applied",
                              duration: Duration(
                                seconds: 2,
                              ),
                              snackPosition: SnackPosition.TOP,
                            ));
                          }
                        });
                  }, builder: (context, state) {
                    return Column(
                      children: [
                        Form(
                          key: formKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: TextFormField(
                            controller: textController,
                            validator: (e) {
                              if (e.isEmpty) {
                                return "Masukkan kode kupon";
                              } else
                                return null;
                            },
                            decoration:
                                InputDecoration(hintText: "Coupon code"),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          child: DefaultButton1(
                            color: Colors.purple[300],
                            text: "Find coupon",
                            onPressed: () {
                              if (formKey.currentState.validate()) {
                                req = DiscountRequest(
                                    code: textController.text,
                                    total: cartController
                                        .getCartSubTotalDouble(
                                            isReseller: authController
                                                .checkIfReseller())
                                        .toString(),
                                    token: Constants().tokenUltimo);
                                print(req);
                                disCubit.checkCouponCode(req);
                              }
                            },
                          ),
                        ),
                        Divider(
                          height: 30,
                          thickness: 2,
                        ),
                      ],
                    );
                  }),
                ),
              ),
              BlocProvider(
                create: (context) => getIt<AuthCubit>()..getAvailableDiscount(),
                child: BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {
                    state.maybeMap(
                        orElse: () {},
                        error: (e) {
                          print(e);
                        },
                        onGetAvailableDiscount: (e) {
                          transController.setDiscount(e.list);
                        });
                  },
                  builder: (context, state) {
                    if (transController.getDiscountList(user.userId).length ==
                        0) {
                      return Center(
                          child: Text(
                        "No Discount Available",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.grey),
                      ));
                    } else
                      return DiscountList(
                        typeId: user.typeIds,
                      );
                  },
                ),
              )
            ]),
          ),
        ));
  }
}

class DiscountList extends StatelessWidget {
  const DiscountList({Key key, @required this.typeId}) : super(key: key);
  final String typeId;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionController>(
      builder: (trans) => ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: trans
            .getDiscountList(typeId)
            .map((e) => Card(
                  elevation: 4,
                  child: ListTile(
                    subtitle: Text(
                      e.eventDiscount,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: TextButton(
                        onPressed: () {
                          trans.setSelectedDiscount(e);
                          Get.back();
                        },
                        child: Text(
                          "Gunakan promo",
                          style: TextStyle(color: Colors.green),
                        )),
                    title: Text(
                      e.customerName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
