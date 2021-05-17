import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/history_detail/history_detail_cubit.dart';
import 'package:roomart/domain/history_detail/transaction_detail_v1.dart';
import 'package:roomart/domain/transaction/models/transaction_item_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model_v2.dart';
import 'package:roomart/domain/transaction/transaction_finished_data_model.dart';
import 'package:roomart/utils/formater.dart';

import '../../../injection.dart';

class TransactionHistoryDetailPageFinished extends StatefulWidget {
  static final String TAG = '/transaction_history_detail_page_finished';
  @override
  _TransactionHistoryDetailPageFinishedState createState() =>
      _TransactionHistoryDetailPageFinishedState();
}

class _TransactionHistoryDetailPageFinishedState
    extends State<TransactionHistoryDetailPageFinished> {
  TransactionDataModelV2 detail;
  @override
  void initState() {
    detail = Get.arguments as TransactionDataModelV2;
    super.initState();
  }

  final dTransactionCubit = getIt<HistoryDetailCubit>();
  final auth = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction Detail"),
      ),
      body: BlocProvider(
          create: (context) => dTransactionCubit
            ..getFinishedHistoryTransaction(detail.salesTransactionId),
          child: BlocConsumer<HistoryDetailCubit, HistoryDetailState>(
              listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                error: (e) {
                  print(e);
                },
                loading: (e) {
                  print("Loading");
                },
                onGetDetailHistory: (e) => print(e));
          }, builder: (context, state) {
            return state.maybeMap(
                orElse: () {
                  return Container();
                },
                onGetFinishedDetail: (e) => Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: Column(children: [
                              ListTile(
                                title: Text(
                                  "Nomor pesanan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(this.detail.invoiceNo),
                              ),
                              Divider(),
                              ListTile(
                                title: checkPaymentStatus(
                                    int.parse(this.detail.status)),
                                subtitle: Text("Status pembayaran"),
                              ),
                            ]),
                          ),
                          // SliverToBoxAdapter(
                          //   child: checkPaymentStatus(int.parse(this.detail.status)),
                          // ),
                          SliverPadding(
                              padding: EdgeInsets.symmetric(vertical: 10)),
                          SliverToBoxAdapter(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Deskripsi",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.delivery_dining,
                                        size: 50,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(child: Html(data: detail.remark))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SliverPadding(
                              padding: EdgeInsets.symmetric(vertical: 10)),
                          SliverPadding(
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            sliver: SliverToBoxAdapter(
                              child: Text(
                                "Detail Pesanan",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SliverList(
                              delegate:
                                  SliverChildBuilderDelegate((context, index) {
                            return detailItem(e.data[index]);
                          }, childCount: e.data.length)),
                          SliverToBoxAdapter(
                              child: Divider(
                            thickness: 2,
                            height: 15,
                          )),
                          SliverToBoxAdapter(
                            child: SummaryDetail(
                              data: detail,
                            ),
                          )
                        ],
                      ),
                    ));
          })),
    );
  }

  Text checkPaymentStatus(int status) {
    switch (status) {
      case 0:
        return Text("Belum dibayar",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold));
        break;
      case 1:
        return Text("Sedang diperiksa",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 18,
                fontWeight: FontWeight.bold));
        break;
      case -1:
        return Text("Batal",
            style: TextStyle(
                color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold));
        break;
      default:
        return Text("Lunas",
            style: TextStyle(
                color: Colors.green,
                fontSize: 18,
                fontWeight: FontWeight.bold));
        break;
    }
  }

  Widget paymentWarn(int status) {
    if (status == 0) {
      return Text(
        "Harap segera melakukan pembayaran ke :\n",
        style: TextStyle(fontSize: 16),
      );
    }
    return SizedBox();
  }

  Column detailItem(TransactionFinishedDataModel item) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                item.itemName,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Row(
              children: [
                Text("x${double.parse(item.qty).toStringAsFixed(0)}"),
                SizedBox(width: 20),
                Text(Formatter().formatStringCurrency((auth.checkIfReseller())
                    ? item.itemPrice
                    : item.itemPrice))
              ],
            ),
          ],
        ),
        SizedBox(
          height: 4,
        )
      ],
    );
  }
}

class SummaryDetail extends StatelessWidget {
  SummaryDetail({Key key, this.data}) : super(key: key);
  final TransactionDataModelV2 data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // detailSummaryItem(label: "Ongkos kirim", value: "90000"),
        detailSummaryItem(
            label: "Discount", value: data.totalDiscount.toString()),
        detailSummaryItem(label: "Total", value: data.totalAmount.toString()),
      ],
    );
  }

  Row detailSummaryItem({String label, String value}) {
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
