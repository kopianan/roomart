import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/transaction/models/transaction_req_res.dart';
import 'package:roomart/presentation/me/components/transaction_item_widget.dart';
import 'package:roomart/presentation/me/components/transaction_item_widget_v2.dart';
import 'package:roomart/utils/constants.dart';

import '../../../injection.dart';

class NotPaidTransactionHistory extends StatefulWidget {
  NotPaidTransactionHistory({this.status = "", this.customerId});
  final String status;
  final String? customerId;
  @override
  _NotPaidTransactionHistoryState createState() =>
      _NotPaidTransactionHistoryState();
}

class _NotPaidTransactionHistoryState extends State<NotPaidTransactionHistory> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: true);
  String? STATUS;
  static final int LIMIT = 10;
  final TransactionCubit transCubit = getIt<TransactionCubit>();
  final transController = Get.put(TransactionController());

  void _onRefresh() {
    transController.notPaidOffset.value = 0;
    transCubit.getHistoryTransactionByMultipleStatus(TransactionHistoryRequest(
      limit: 10,
      offset: transController.notPaidOffset.value * LIMIT,
      token: Constants().tokenUltimo,
      status: STATUS,
      customerId: widget.customerId,
    ));
  }

  void _onLoading() {
    transCubit.getHistoryTransactionByMultipleStatus(TransactionHistoryRequest(
      limit: 10,
      offset: transController.notPaidOffset.value * LIMIT,
      token: Constants().tokenUltimo,
      status: STATUS,
      customerId: widget.customerId,
    ));
  }

  void initialRequest() {
    var _request = TransactionHistoryRequest(
      limit: 10,
      offset: transController.notPaidOffset.value * LIMIT,
      token: Constants().tokenUltimo,
      status: STATUS,
      customerId: widget.customerId,
    );

    if (transController.notPaidTransaction.isEmpty) {
      transCubit.getHistoryTransactionByMultipleStatus(_request);
    }
  }

  @override
  void initState() {
    STATUS = widget.status;
    print(STATUS);
    initialRequest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionController>(
        builder: (trans) => BlocProvider(
            create: (context) => transCubit,
            child: BlocConsumer<TransactionCubit, TransactionState>(
                listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                error: (e) {},
                onGetHistoryTransaction: (value) {
                  if (_refreshController.isRefresh) {
                    trans.setNotPaidTransaction(value.data);
                    _refreshController.refreshCompleted();
                  } else {
                    trans.setNotPaidTransaction(value.data);
                    _refreshController.loadComplete();
                  }
                },
              );
            }, builder: (context, state) {
              return SmartRefresher(
                enablePullDown: true,
                enablePullUp: true,
                header: WaterDropHeader(),
                footer: CustomFooter(
                  builder: (BuildContext context, LoadStatus? mode) {
                    Widget body;
                    if (mode == LoadStatus.idle) {
                      body = Text("pull up load");
                    } else if (mode == LoadStatus.loading) {
                      body = CupertinoActivityIndicator();
                    } else if (mode == LoadStatus.failed) {
                      body = Text("Load Failed!Click retry!");
                    } else if (mode == LoadStatus.canLoading) {
                      body = Text("release to load more");
                    } else {
                      body = Text("No more Data");
                    }
                    return Container(
                      height: 55.0,
                      child: Center(child: body),
                    );
                  },
                ),
                controller: _refreshController,
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                child: (trans.getNotPaidTransaction.length == 0)
                    ? Center(
                        child: Text(
                          "No Transaction",
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    : ListView.builder(
                        itemCount: trans.getNotPaidTransaction.length,
                        itemBuilder: (context, index) {
                          return TransactionItemWidget(
                              data: trans.getNotPaidTransaction[index]);
                        }),
              );
            })));
  }
}
