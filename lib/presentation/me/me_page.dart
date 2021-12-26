import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/application/payment/payment_controller.dart';
import 'package:roomart/application/payment/payment_cubit.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/transaction/models/transaction_req_res.dart';
import 'package:roomart/infrastructure/core/pref.dart';
import 'package:roomart/presentation/cart/cart_page.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';
import 'package:roomart/presentation/me/balance_history_page.dart';
import 'package:roomart/presentation/me/order_page.dart';
import 'package:roomart/presentation/me/profile_page.dart';
import 'package:roomart/presentation/splash_screen/splash_screen_page.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';

import '../../injection.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  final authController = Get.put(AuthController());
  final transContrller = Get.put(TransactionController());
  final paymentController = Get.put(PaymentController());
  final AuthCubit cubit = getIt<AuthCubit>();

  final TransactionCubit transCubit = getIt<TransactionCubit>();
  final PaymentCubit paymentCubit = getIt<PaymentCubit>();
  double balanceInProgress = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => paymentCubit..getPaymentMethodList(),
      child: BlocListener<PaymentCubit, PaymentState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            onGetPaymentMethod: (e) {
              paymentController.setPaymentMethodList(e.method);
              var _request = TransactionHistoryRequest(
                limit: 1000,
                offset: 0,
                token: Constants().tokenUltimo,
                status: "0",
                customerId: authController.getUserDataModel!.userId,
              );
              transCubit.getHistoryTransactionByMultipleStatus(_request);
            },
          );
        },
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.purple[900],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        authController.getUserDataModel!.fullName!,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    BlocProvider(
                      create: (context) => cubit
                        ..getArBalance(authController.getUserDataModel!.userId),
                      child: BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                          state.maybeMap(
                              orElse: () {},
                              onGetArBalance: (e) {
                                print(e);
                              });
                        },
                        builder: (context, state) {
                          return state.maybeMap(orElse: () {
                            return Expanded(
                                child: InkWell(
                              onTap: () {
                                cubit.getArBalance(
                                    authController.getUserDataModel!.userId);
                              },
                              child: saldoContainer(
                                "Total Saldo",
                                "Refresh",
                                Colors.yellow,
                              ),
                            ));
                          }, onGetArBalance: (e) {
                            return Expanded(
                                child: InkWell(
                                    onTap: () {
                                      Get.toNamed(BalanceHistoryPage.TAG);
                                    },
                                    child: saldoContainer(
                                      "Total Saldo",
                                      e.balancd,
                                      Colors.yellow,
                                    )));
                          }, loading: (e) {
                            return loadingBalance();
                          });
                        },
                      ),
                    ),
                    BlocProvider(
                      create: (context) => transCubit,
                      child: BlocConsumer<TransactionCubit, TransactionState>(
                        listener: (context, state) {
                          state.maybeMap(
                            orElse: () {},
                            onGetHistoryTransaction: (e) {
                              String? depoId =
                                  paymentController.getDepostiPaymentCode();

                              e.data.forEach((data) {
                                if (data.status == 0 &&
                                    data.pmttype == depoId) {
                                  setState(() {
                                    balanceInProgress =
                                        data.total! + balanceInProgress;
                                  });
                                }
                              });
                            },
                          );
                        },
                        builder: (context, state) {
                          return state.maybeMap(orElse: () {
                            return Expanded(
                                child: saldoContainer(
                                    "Dalam Proses", "Nothing", Colors.purple,
                                    textColor: Colors.white));
                          }, error: (e) {
                            return Expanded(
                                child: saldoContainer(
                                    "Dalam Proses", "Refresh", Colors.purple,
                                    textColor: Colors.white));
                          }, loading: (e) {
                            return Expanded(
                                child: Container(
                              color: Colors.purple,
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            ));
                          }, onGetHistoryTransaction: (e) {
                            return Expanded(
                              child: saldoContainer(
                                  "Dalam Proses",
                                  // Formatter().formatStringCurrency(
                                  balanceInProgress.toString(),
                                  // ),
                                  Colors.purple,
                                  textColor: Colors.white),
                            );
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  MenuTiles(
                    color: Colors.blue,
                    icon: Icons.person,
                    text: "Profil Saya",
                    onTap: () {
                      Get.toNamed(ProfilePage.TAG);
                    },
                  ),
                  MenuTiles(
                    color: Colors.yellow,
                    icon: Icons.list_alt_sharp,
                    text: "Daftar Transaksi",
                    onTap: () {
                      Get.toNamed(OrderPage.TAG);
                    },
                  ),
                  MenuTiles(
                    color: Colors.green,
                    icon: Icons.card_travel_rounded,
                    text: "Belanja Saya",
                    onTap: () {
                      Get.toNamed(CartPage.TAG);
                    },
                  ),
                  MenuTiles(
                    color: Colors.red,
                    icon: Icons.logout,
                    text: "Log Out",
                    onTap: () {
                      Get.dialog(AlertDialog(
                        title: Text("Log out"),
                        content: Text("Log out the application"),
                        actions: [
                          TextButton(
                            onPressed: () async {
                              Get.back();
                              try {
                                authController.removeUserData();
                                await Pref().logOut();
                                // Get.offAllNamed(DashboardPage.TAG);
                                Pref().logOut().then((value) {
                                  GetBar(
                                      message: "Log out user",
                                      duration: Duration(seconds: 3));
                                });
                              } catch (e) {
                                Get.showSnackbar(GetBar(
                                    message: "Something wrong",
                                    duration: Duration(seconds: 3)));
                              }
                            },
                            child: Text("Log out",
                                style: TextStyle(
                                  color: Colors.red,
                                )),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Back",
                                style: TextStyle(
                                  color: Colors.red,
                                )),
                          ),
                        ],
                      ));
                    },
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }

  Expanded loadingBalance() {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    ));
  }

  Container saldoContainer(String label, String value, Color bgColor,
      {Color textColor = Colors.black}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: bgColor,
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 5),
          Text(
            Formatter().formatStringCurrency(value),
            style: TextStyle(
              fontSize: 17,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class SubjectState {}

class MenuTiles extends StatelessWidget {
  const MenuTiles({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final Color color;
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap as void Function()?,
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          leading: Icon(
            icon,
            color: color,
          ),
        ),
        Divider(
          color: Colors.orange,
        )
      ],
    );
  }
}
