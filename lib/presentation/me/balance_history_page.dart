import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/history_detail/history_detail_cubit.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/transaction/models/balance_history_model.dart';
import 'package:roomart/presentation/me/widgets/transaction_history_detail_page_finished.dart';

import '../../injection.dart';

class BalanceHistoryPage extends StatefulWidget {
  static const String TAG = '/balance_history_page';
  const BalanceHistoryPage({Key? key}) : super(key: key);

  @override
  _BalanceHistoryPageState createState() => _BalanceHistoryPageState();
}

class _BalanceHistoryPageState extends State<BalanceHistoryPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  final authController = Get.put(AuthController());

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()

    _refreshController.loadComplete();
  }

  List<BalanceHistoryModel> listBalance = [];
  late String userId;
  @override
  void initState() {
    userId = authController.getUserDataModel!.userId!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Balance History")),
      body: BlocProvider(
        create: (context) =>
            getIt<TransactionCubit>()..getBalanceHistory(12, 0, userId),
        child: BlocConsumer<TransactionCubit, TransactionState>(
          listener: (context, state) {
            print(state);
            state.maybeMap(
              orElse: () {},
              onGetBalanceHistory: (e) {
                listBalance = e.data;
              },
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return Center(child: Text("Data history tidak ditemukan"));
              },
              error: (e) {
                return Center(child: Text(e.error));
              },
              loading: (e) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
              onGetBalanceHistory: (e) {
                if (listBalance.length == 0) {
                  return Center(
                    child: Text("Tidak ada history"),
                  );
                }
                return ListView.builder(
                  itemBuilder: (context, index) =>
                      _itemBuilder(listBalance[index]),
                  itemExtent: 100.0,
                  itemCount: listBalance.length,
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _itemBuilder(BalanceHistoryModel item) {
    // // item.sort((a, b) => b.transactionDate.compareTo(a.transactionDate));
    // final item = snapshotData[index];
    bool isCredit = false;
    Widget titleName;
    if (item.transactionNo!.substring(0, 2) == "CM") {
      isCredit = false;
      titleName = Text(
        "Deposit",
        style: TextStyle(fontSize: 16, color: Colors.blue),
      );
    } else if (item.transactionNo!.substring(0, 2) == "SI") {
      isCredit = true;
      titleName = Text(
        // item.salesOrderId,
        item.transactionNo!,
        style: TextStyle(fontSize: 16),
      );
    } else {
      isCredit = false;
      titleName = Text(
        "Klaim Deposit / Bayar",
        // item.transactionNo,
        style: TextStyle(fontSize: 16),
      );
    }
    return BlocProvider(
      create: (context) => getIt<HistoryDetailCubit>(),
      child: BlocListener<HistoryDetailCubit, HistoryDetailState>(
        listener: (context, state) {
          print(state);
          state.maybeMap(
              orElse: () {},
              onGetFinishedDetail: (e) {
                Get.toNamed(TransactionHistoryDetailPageFinished.TAG,
                    arguments: e.data.first);
              });
        },
        child: BlocBuilder<HistoryDetailCubit, HistoryDetailState>(
          builder: (context, state) {
            return Container(
                child: InkWell(
              onTap: () {
                // if (item.transactionNo!.substring(0, 2) == "SI") {
                // print(item.salesOrderId);
                // context
                //     .read<HistoryDetailCubit>()
                //     .getFinishedHistoryTransaction(item.salesOrderId);
                // }
              },
              child: Container(
                child: Column(
                  children: <Widget>[
                    Divider(height: 0),
                    ListTile(
                      trailing: (item.transactionNo!.substring(0, 2) == "RP")
                          ? Text(
                              formatStringCurrency(item.rpamount),
                              style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      (isCredit) ? Colors.black : Colors.red),
                            )
                          : Text(
                              formatStringCurrency(item.amount),
                              style: TextStyle(
                                  fontSize: 15,
                                  color:
                                      (isCredit) ? Colors.black : Colors.red),
                            ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            DateFormat("dd-MM-yyyy")
                                .format(DateTime.parse(item.transactionDate!)),
                            style: TextStyle(fontSize: 13),
                          ),
                          titleName
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
          },
        ),
      ),
    );
  }

  var format = NumberFormat("#,###");

  String formatStringCurrency(String? input) {
    try {
      var _data = "0";
      if (input == "0.0000" || input == "null")
        _data = "0";
      else
        _data = input!;

      var data = double.parse(_data).toStringAsFixed(0);
      var _result = format.format(int.parse(data)).toString();
      return "(Rp.$_result)";
    } catch (e) {
      return "(Rp.0)";
    }
  }

  String doublePrice(String price) {
    double dataPrice = double.parse(price);
    return dataPrice.toStringAsFixed(0);
  }

  String doubleTodoubleFormat(double price) {
    return format.format(price);
  }

  var dateFormat = DateFormat("dd/MM/yyyy");

  bool validateStructure(String value) {
    String pattern = r'^(?=.*?[a-z])(?=.*?[0-9])';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
