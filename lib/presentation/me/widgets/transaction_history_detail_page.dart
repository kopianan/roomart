import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/history_detail/history_detail_cubit.dart';
import 'package:roomart/domain/transaction/models/transaction_item_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/utils/formater.dart';

import '../../../injection.dart';

class TransactionHistoryDetailPage extends StatefulWidget {
  static final String TAG = '/transaction_history_detail_page';
  @override
  _TransactionHistoryDetailPageState createState() =>
      _TransactionHistoryDetailPageState();
}

class _TransactionHistoryDetailPageState
    extends State<TransactionHistoryDetailPage> {
  TransactionDataModel detail;
  @override
  void initState() {
    detail = Get.arguments as TransactionDataModel;
    print(detail.items); 
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
        create: (context) => dTransactionCubit,
        child: BlocConsumer<HistoryDetailCubit, HistoryDetailState>(
            listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              error: (e) {
                print(e);
              },
              onGetDetailHistory: (e) => print(e));
        }, builder: (context, state) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(children: [
                    ListTile(
                      title: Text(
                        "Nomor pesanan",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(this.detail.number),
                    ),
                    Divider(),
                    ListTile(
                      title: checkPaymentStatus(this.detail.statusEnum),
                      subtitle: Text("Status pembayaran"),
                    ),
                  ]),
                ),
                SliverToBoxAdapter(child: paymentWarn(this.detail.statusEnum)),
               SliverPadding(padding: EdgeInsets.symmetric(vertical: 10)),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deskripsi",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                          Text(detail.remark)
                        ],
                      ),
                    ],
                  ),
                ),
                SliverPadding(padding: EdgeInsets.symmetric(vertical: 10)),
                SliverPadding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      "Detail Pesanan",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  return detailItem(detail.items[index]);
                }, childCount: detail.items.length)),
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
          );
        }),
      ),
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

  Column detailItem(TransactionItemDataModel item) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 7,
              child: Text(
                item.itemName,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Text("x${item.qty}"),
                  SizedBox(width: 20),
                  Text(Formatter().formatStringCurrency((auth.checkIfReseller())
                      ? item.resellerPrice.toString()
                      : item.price.toString()))
                ],
              ),
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
  final TransactionDataModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // detailSummaryItem(label: "Ongkos kirim", value: "90000"),
        // detailSummaryItem(
        //     label: "Discount", value: data.totalDiscount.toString()),
        detailSummaryItem(label: "Total", value: data.total.toString()),
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
