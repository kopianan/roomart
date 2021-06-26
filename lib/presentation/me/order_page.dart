import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/me/widgets/finished_transaction_history_page.dart';
import 'package:roomart/presentation/me/widgets/not_paid_transaction_history_page.dart';
import 'package:roomart/presentation/me/widgets/sent_transaction_history_page.dart';
import 'package:roomart/utils/my_color.dart';

import '../../injection.dart';
import 'widgets/cancelled_transaction_history_page.dart';
import 'widgets/new_transaction_history_page.dart';

class OrderPage extends StatefulWidget {
  static final String TAG = '/order_page';
  @override
  _OrderPageState createState() => _OrderPageState();
}

// DM152585832596584529828
class _OrderPageState extends State<OrderPage> {
  final transController = Get.put(TransactionController());
  final authController = Get.put(AuthController());
  UserDataModel? user;
  @override
  void initState() {
    user = authController.getUserDataModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Transaksi"),
          bottom: TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            tabs: [
              Tab(
                text: "Belum dibayar",
              ),
              Tab(
                text: "Pesanan Baru",
              ),
              Tab(
                text: "Sedang Dikirim",
              ),
              Tab(
                text: "Selesai",
              ),
              Tab(
                text: "Batal",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            NotPaidTransactionHistory(
              status: "0,1",
              customerId: user!.userId,
            ),
            NewTransactionHistoryPage(
              status: "2",
              customerId: user!.userId,
            ),
            SentTransactionHistoryPage(
              customerId: user!.userId,
              status: "2",
            ),
            FinishedTransactionHistoryPage(
              customerId: user!.userId,
              status: "",
            ),
            CancelledTransactionHistoryPage(
              status: "-1",
              customerId: user!.userId,
            )
          ],
        ),
      ),
    );
  }
}
