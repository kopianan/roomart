import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model_v2.dart';
import 'package:roomart/presentation/me/widgets/transaction_history_detail_page.dart';
import 'package:roomart/presentation/me/widgets/transaction_history_detail_page_finished.dart';
import 'package:roomart/presentation/me/widgets/transaction_history_detail_page_full.dart';
import 'package:roomart/utils/formater.dart';

class TransactionItemWidgetV2 extends StatelessWidget {
  const TransactionItemWidgetV2({
    Key? key,
    required TransactionDataModelV2 data,
  })  : _data = data,
        super(key: key);

  final TransactionDataModelV2 _data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(TransactionHistoryDetailPageFinished.TAG, arguments: _data);
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _data.invoiceNo!,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(
                        Formatter().fullDateFormat(_data.transactionDate!),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(right: 15, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "IDR",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          Formatter().formatStringCurrencyNoSymbol(
                              _data.totalAmount.toString()),
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
