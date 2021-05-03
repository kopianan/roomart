import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/injection.dart';

class PaymentStatusPage extends StatefulWidget {
  static final String TAG = '/payment_status_page';
  @override
  _PaymentStatusPageState createState() => _PaymentStatusPageState();
}

class _PaymentStatusPageState extends State<PaymentStatusPage>
    with WidgetsBindingObserver {
  final transactionCubit = getIt<TransactionCubit>();
  String orderId;

  @override
  void initState() {
    orderId = Get.arguments as String;
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        transactionCubit.checkMidtransTransactionStatus(orderId);
        break;
      case AppLifecycleState.inactive:
        print("app in inactive");
        break;
      case AppLifecycleState.paused:
        print("app in paused");
        break;
      case AppLifecycleState.detached:
        print("app in detached");
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            transactionCubit..checkMidtransTransactionStatus(orderId),
        child: BlocConsumer<TransactionCubit, TransactionState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              onCheckMidtransStatus: (e) {
                print(e);
              },
              error: (e) {
                print(e);
              },
            );
          },
          builder: (context, state) {
            return Container();
          },
        ),
      ),
    );
  }
}
