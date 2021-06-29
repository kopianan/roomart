import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/history_detail/history_detail_cubit.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/transaction/models/transaction_item_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/presentation/me/payment_confirmation_page.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/formater.dart';

import '../../../injection.dart';

class NewHistoryTransactionDetailPage extends StatefulWidget {
  static final String TAG = '/new_history_transaction_detail_page';
  @override
  _NewHistoryTransactionDetailPageState createState() =>
      _NewHistoryTransactionDetailPageState();
}

class _NewHistoryTransactionDetailPageState
    extends State<NewHistoryTransactionDetailPage> {
  TransactionDataModel? detail;
  @override
  void initState() {
    detail = Get.arguments as TransactionDataModel?;

    super.initState();
  }

  final HistoryDetailCubit dTransactionCubit = getIt<HistoryDetailCubit>();
  final auth = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belum Dibayar"),
      ),
      body: BlocProvider(
        create: (context) => dTransactionCubit,
        child: BlocConsumer<HistoryDetailCubit, HistoryDetailState>(
            listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            error: (e) {},
            onGetDetailHistory: (e) {},
          );
        }, builder: (context, state) {
          return Container(
            child: Column(
              children: [
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(children: [
                          ListTile(
                            title: Text(
                              "Nomor pesanan",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(this.detail!.number!),
                          ),
                          Divider(),
                          ListTile(
                            title: checkPaymentStatus(this.detail!.statusEnum),
                            subtitle: Text("Status pembayaran"),
                          ),
                        ]),
                      ),
                      SliverToBoxAdapter(
                          child: paymentWarn(this.detail!.statusEnum)),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      SliverToBoxAdapter(
                        child: Card(
                          margin: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Deskripsi",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Divider(height: 15),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0),
                                    child: Icon(
                                      Icons.delivery_dining,
                                      size: 50,
                                    ),
                                  ),
                                  Text(detail!.remark!)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Card(
                          margin: EdgeInsets.all(8),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Detail Pesanan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(height: 15),
                                ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: detail!.items!.length,
                                    itemBuilder: (context, index) {
                                      return detailItem(detail!.items![index]);
                                    }),
                                Divider(height: 10),
                                SummaryDetail(
                                  data: detail,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                BlocProvider(
                  create: (context) => getIt<TransactionCubit>(),
                  child: BlocConsumer<TransactionCubit, TransactionState>(
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () {},
                        onCancelOrder: (e) {
                          Get.back();
                          Get.showSnackbar(
                            GetBar(
                              message: e.message,
                              duration: Duration(seconds: 3),
                            ),
                          );
                        },
                      );
                    },
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: DefaultButton1(
                                  color: Colors.orange,
                                  text: "Konfirmasi Pembayaran",
                                  onPressed: () {
                                    Get.toNamed(PaymentConfirmationPage.TAG,
                                        arguments: detail);
                                  }),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 2,
                              child: DefaultButton2(
                                  color: Colors.red,
                                  text: "Batalkan",
                                  onPressed: () {
                                    context
                                        .read<TransactionCubit>()
                                        .cancelTransaction(
                                            auth.getUserDataModel!.userId,
                                            detail!.number);
                                  }),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }

  Text checkPaymentStatus(int? status) {
    switch (status) {
      case 0:
        return Text("Belum dibayar",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold));

      case 1:
        return Text("Sedang diperiksa",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 18,
                fontWeight: FontWeight.bold));

      case -1:
        return Text("Batal",
            style: TextStyle(
                color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold));

      default:
        return Text("Lunas",
            style: TextStyle(
                color: Colors.green,
                fontSize: 18,
                fontWeight: FontWeight.bold));
    }
  }

  Widget paymentWarn(int? status) {
    if (status == 0) {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Harap segera melakukan pembayaran ke :",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            BlocProvider(
              create: (context) => getIt<TransactionCubit>()..getAllBank(),
              child: BlocConsumer<TransactionCubit, TransactionState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return Text("D");
                    },
                    error: (e) {
                      return ListTile(
                        title: Text(e.toString()),
                        subtitle: Text("Tap to refresh"),
                        onTap: () {
                          getIt<TransactionCubit>().getAllBank();
                        },
                      );
                    },
                    loading: (e) {
                      return ListTile(
                        title: Text("Getting bank data"),
                        leading: Transform.scale(
                          scale: 0.5,
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                    onGetBankData: (e) {
                      // return Text("DF");
                      return Column(
                          children: e.listBank
                              .map((e) => ListTile(
                                    onTap: () {
                                      Clipboard.setData(
                                              ClipboardData(text: e.accountNo))
                                          .then((value) =>
                                              Get.showSnackbar(GetBar(
                                                message:
                                                    "Nomor sudah di-copy ke clipboard",
                                                duration: Duration(seconds: 3),
                                              )));
                                    },
                                    title: Text(e.accountName),
                                    subtitle: Text(
                                      "${e.bankName} a.n ${e.accountNo}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: Icon(Icons.copy),
                                  ))
                              .toList());
                    },
                  );
                },
              ),
            )
          ],
        ),
      );
    }
    return SizedBox();
  }

  Column detailItem(TransactionItemDataModel item) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 7,
              child: Text(item.itemName!),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Text("x${item.qty}"),
                  SizedBox(width: 20),
                  Text(Formatter().formatStringCurrency(item.price.toString()))
                  // Text(Formatter().formatStringCurrency((auth.checkIfReseller())
                  //     ? item.resellerPrice.toString()
                  //     : item.price.toString()))
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class SummaryDetail extends StatelessWidget {
  SummaryDetail({Key? key, this.data}) : super(key: key);
  final TransactionDataModel? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // detailSummaryItem(label: "Ongkos kirim", value: "90000"),
        // detailSummaryItem(
        //     label: "Discount", value: data.totalDiscount.toString()),
        detailSummaryItem(label: "Total", value: data!.total.toString()),
      ],
    );
  }

  Row detailSummaryItem({required String label, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
        ),
        Text(
          Formatter().formatStringCurrency(value),
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
