import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/transaction/models/transaction_req_res.dart';
import 'package:roomart/utils/constants.dart';

import '../../../injection.dart';

class TransactionHistoryPage extends StatefulWidget {
  @override
  _TransactionHistoryPageState createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  void _onRefresh() {}

  void _onLoading() {
    offset += 1;
    transCubit.getHistoryTransactionByStatus(TransactionHistoryRequest(
      limit: 10,
      offset: offset,
      token: Constants().tokenUltimo,
      status: "-1",
      customerId: "DM152585832596584529828",
    ));
  }

  final transCubit = getIt<TransactionCubit>();

  int offset;

  @override
  void initState() {
    offset = 0;
    transCubit.getHistoryTransactionByStatus(TransactionHistoryRequest(
      limit: 10,
      offset: offset,
      token: Constants().tokenUltimo,
      status: "2",
      customerId: "DM152585832596584529828",
    ));
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
                  trans.setAllTransactionHistoryData(value.data);
                  _refreshController.refreshCompleted();
                  _refreshController.loadComplete();
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
                    itemCount: trans.getAllTransactionData.length,
                    itemBuilder: (context, index) {
                      return Text(trans.getAllTransactionData[index].iD);
                    }),
              );
            })));
  }
}
