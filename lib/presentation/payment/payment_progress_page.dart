import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/application/payment/payment_controller.dart';
import 'package:roomart/application/payment/payment_cubit.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/core/payment_method_enum.dart';
import 'package:roomart/domain/transaction/trans_item/trans_request.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';
import 'package:roomart/presentation/payment/payment_midtrans_page.dart';
import 'package:roomart/presentation/payment/payment_status_page.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../injection.dart';

class PaymentProgressPage extends StatefulWidget {
  static final String TAG = "/payment_progress_page";
  @override
  _PaymentProgressPageState createState() => _PaymentProgressPageState();
}

class _PaymentProgressPageState extends State<PaymentProgressPage> {
  final cartController = Get.put(CartController());
  final authController = Get.put(AuthController());
  final transactionController = Get.put(TransactionController());
  final paymentController = Get.put(PaymentController());
  final transCubit = getIt<TransactionCubit>();
  TransRequest transRequest;
  void paymentMethod() {
    // if (paymentController.getSelectedPaymentMethod.code ==
    //     describeEnum(paymentEnum.MID)) {
    //   transCubit.createNewTransaction(transRequest);
    // } else {
    //   //IS CREDIT OR TRANSFER
    // }
    transCubit.createNewTransaction(transRequest);
  }

  @override
  void initState() {
    transRequest = Get.arguments as TransRequest;
    paymentMethod();
    super.initState();
  }

  void openWeb(String url, String transNo) async {
    bool _isCanLaunch = await canLaunch(url);
    if (_isCanLaunch) {
      await launch(url);
      // transCubit.checkMidtransTransactionStatus(transNo);
    }else{
      print("can not launch"); 
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment On Progress"),
      ),
      body: BlocProvider(
        create: (context) => transCubit,
        child: BlocConsumer<TransactionCubit, TransactionState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                error: (e) {
                  Get.showSnackbar(GetBar(
                    message: e.error,
                    snackPosition: SnackPosition.TOP,
                  ));
                },
                loading: (e) {
                  print("Loading");
                },
                onAddNewTransaction: (e) async {
                  if ((e.data.salesTrans.first.paymentGatewayUrl == null) ||
                      e.data.salesTrans.first.paymentGatewayUrl.isBlank) {
                  } else {
                    print(e.data.salesTrans.single.paymentGatewayUrl);
                     openWeb(e.data.salesTrans.first.paymentGatewayUrl,
                        e.data.salesTrans.first.transNo);
                  }
                },
                onCheckMidtransStatus: (e) {
                  Get.toNamed(PaymentStatusPage.TAG, arguments: e.data);
                });
          },
          builder: (context, state) {
            return state.maybeMap(
                orElse: () =>
                    midtransWaiting(transRequest.salesTrans.first.transNo),
                // successGeneralPayment(),
                loading: (e) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Loading",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        CircularProgressIndicator()
                      ],
                    ),
                  );
                },
                onAddNewTransaction: (e) {
                  if ((e.data.salesTrans.first.paymentGatewayUrl == null) ||
                      e.data.salesTrans.first.paymentGatewayUrl.isBlank) {
                    return successGeneralPayment();
                  } else {
                    return midtransWaiting(e.data.salesTrans.first.transNo);
                  }
                },
                onCheckMidtransStatus: (e) {
                  return Container();
                });
          },
        ),
      ),
    );
  }

  Container successGeneralPayment() {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Icon(
              Icons.check_circle_outline_sharp,
              size: 100,
              color: Colors.green,
            ),
            SizedBox(height: 10),
            Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Pembayran berhasil, silahkan kembali dan lihat status di daftar transaksi ",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
          DefaultButton2(
            color: Colors.purpleAccent,
            onPressed: () {
              Get.offAllNamed(DashboardPage.TAG);
            },
            text: "Kembali",
          )
        ],
      ),
    );
  }

  Container midtransWaiting(String id) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Icon(
              Icons.history,
              size: 100,
              color: Colors.orange,
            ),
            SizedBox(height: 10),
            Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Pembayran sedang diproses\nRefresh untuk check status",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
          DefaultButton1(
            color: Colors.orangeAccent,
            onPressed: () {
              transCubit.checkMidtransTransactionStatus(id);
            },
            text: "Check pembayaran",
          )
        ],
      ),
    );
  }
}
