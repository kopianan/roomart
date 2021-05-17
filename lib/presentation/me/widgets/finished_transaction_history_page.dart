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

class FinishedTransactionHistoryPage extends StatefulWidget {
  FinishedTransactionHistoryPage({this.status = "", this.customerId});
  final String status;
  final String customerId;
  @override
  _FinishedTransactionHistoryPageState createState() =>
      _FinishedTransactionHistoryPageState();
}

class _FinishedTransactionHistoryPageState
    extends State<FinishedTransactionHistoryPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: true);
  String STATUS;
  static final int LIMIT = 10;
  final transCubit = getIt<TransactionCubit>();
  final transController = Get.put(TransactionController());

  void _onRefresh() {
    transController.finishedOffset.value = 0;
    transCubit.getHistoryTransactionByStatusV2(TransactionHistoryRequest(
      limit: 10,
      offset: transController.finishedOffset.value * LIMIT,
      token: Constants().tokenUltimo,
      status: STATUS,
      customerId: widget.customerId,
    ));
  }

  void _onLoading() {
    transCubit.getHistoryTransactionByStatusV2(TransactionHistoryRequest(
      limit: 10,
      offset: transController.finishedOffset.value * LIMIT,
      token: Constants().tokenUltimo,
      status: STATUS,
      customerId: widget.customerId,
    ));
  }

  void initialRequest() {
    var _request = TransactionHistoryRequest(
      limit: 10,
      offset: transController.finishedOffset.value * LIMIT,
      token: Constants().tokenUltimo,
      status: STATUS,
      customerId: widget.customerId,
    );

    if (transController.getFinishedTransaction.isEmpty) {
      transCubit.getHistoryTransactionByStatusV2(_request);
    }
  }

  @override
  void initState() {
    STATUS = widget.status;
    print("initstate");
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
                onGetHistoryTransactionV2: (value) {
                  print(value); 
                  if (_refreshController.isRefresh) {
                    trans.setFinishedTransaction(value.data);
                    _refreshController.refreshCompleted();
                  } else {
                    trans.addFinishedTransaction(value.data);
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
                  builder: (BuildContext context, LoadStatus mode) {
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
                child: ListView.builder(
                    itemCount: trans.getFinishedTransaction.length,
                    itemBuilder: (context, index) {
                      return TransactionItemWidgetV2(
                          data: trans.getFinishedTransaction[index]);
                    }),
              );
            })));
  }
}
