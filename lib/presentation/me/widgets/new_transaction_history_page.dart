import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/transaction/models/transaction_req_res.dart';
import 'package:roomart/presentation/me/components/transaction_item_widget.dart';
import 'package:roomart/utils/constants.dart';

import '../../../injection.dart';

class NewTransactionHistoryPage extends StatefulWidget {
  NewTransactionHistoryPage({this.status = "", this.customerId});
  final String status;
  final String customerId;
  @override
  _NewTransactionHistoryPageState createState() =>
      _NewTransactionHistoryPageState();
}

class _NewTransactionHistoryPageState extends State<NewTransactionHistoryPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: true);
  String STATUS;
  static final int LIMIT = 10;
  final transCubit = getIt<TransactionCubit>();
  final transController = Get.put(TransactionController());

  void _onRefresh() {
    transController.newOffset.value = 0;
    transCubit.getHistoryTransactionByStatus(TransactionHistoryRequest(
      limit: 10,
      offset: transController.newOffset.value * LIMIT,
      token: Constants().tokenUltimo,
      status: STATUS,
      customerId: widget.customerId,
    ));
  }

  void _onLoading() {
    transCubit.getHistoryTransactionByStatus(TransactionHistoryRequest(
      limit: 10,
      offset: transController.newOffset.value * LIMIT,
      token: Constants().tokenUltimo,
      status: STATUS,
      customerId: widget.customerId,
    ));
  }

  void initialRequest() {
    var _request = TransactionHistoryRequest(
      limit: 10,
      offset: transController.newOffset.value * LIMIT,
      token: Constants().tokenUltimo,
      status: STATUS,
      customerId: widget.customerId,
    );

    if (transController.getNewTransactionList.isEmpty) {
      transCubit.getHistoryTransactionByStatus(_request);
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
                onGetHistoryTransaction: (value) {
                  if (_refreshController.isRefresh) {
                    trans.setNewTransactionList(value.data);
                    _refreshController.refreshCompleted();
                  } else {
                    trans.addNewTransactionList(value.data);
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
                    itemCount: trans.getNewTransactionList.length,
                    itemBuilder: (context, index) {
                      return TransactionItemWidget(
                          data: trans.getNewTransactionList[index]);
                    }),
              );
            })));
  }
}
