import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';

import '../../../injection.dart';

class NotPaid extends StatefulWidget {
  @override
  _NotPaidState createState() => _NotPaidState();
}

class _NotPaidState extends State<NotPaid> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<TransactionCubit>()
          ..getHistoryTranasction("DM152585832596584529828"),
        child: BlocConsumer<TransactionCubit, TransactionState>(
            listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            onGetHistoryTransaction: (value) {
              // transController.setAllTransactionHistoryData(value.data);
            },
          );
        }, builder: (context, state) {
          return state.maybeMap(
              orElse: () => Container(),
              loading: (e) => Container(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
              onGetHistoryTransaction: (value) {
                return GetBuilder<TransactionController>(
                  builder: (trans) {
                    final _filtered = trans.getFilteredTransaction("1");
                    print(_filtered.length);
                    return ListView.builder(
                        itemCount: _filtered.length,
                        itemBuilder: (context, index) {});
                  },
                );
              });
        }));
  }
}
