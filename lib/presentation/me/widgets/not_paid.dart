import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/transaction/models/transaction_req_res.dart';
import 'package:roomart/utils/constants.dart';

import '../../../injection.dart';

class NotPaid extends StatefulWidget {
  @override
  _NotPaidState createState() => _NotPaidState();
}

class _NotPaidState extends State<NotPaid> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionController>(
        builder: (trans) => BlocProvider(
            create: (context) => getIt<TransactionCubit>()
              ..getHistoryTransactionByStatus(TransactionHistoryRequest(
                limit: 10,
                offset: 0,
                token: Constants().tokenUltimo,
                status: "1",
                customerId: "DM152585832596584529828",
              )),
            child: BlocConsumer<TransactionCubit, TransactionState>(
                listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                error: (e) {},
                onGetHistoryTransaction: (value) {
                  trans.setAllTransactionHistoryData(value.data);
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
                    return ListView.builder(
                        itemCount: trans.getAllTransactionData.length,
                        itemBuilder: (context, index) {
                          return Text(trans.getAllTransactionData[index].iD);
                        });
                  });
            })));
  }
}
