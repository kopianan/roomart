import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/utils/my_color.dart';

import '../../injection.dart';
import 'widgets/new_transaction_history_page.dart';

class OrderPage extends StatefulWidget {
  static final String TAG = '/order_page';
  @override
  _OrderPageState createState() => _OrderPageState();
}

// DM152585832596584529828
class _OrderPageState extends State<OrderPage> {
  final transController = Get.put(TransactionController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: button1,
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
            Container(
              color: Colors.teal,
            ),
            NewTransactionHistoryPage(
              status: "2",
              customerId: "DM152585832596584529828",
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.deepOrange,
            ),
            Container(
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}
