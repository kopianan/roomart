import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/presentation/me/widgets/transaction_history_detail_page.dart';
import 'package:roomart/presentation/me/widgets2/new_history_transaction_detail_page.dart';
import 'package:roomart/utils/formater.dart';

class TransactionItemWidget extends StatelessWidget {
  const TransactionItemWidget({
    Key? key,
    required TransactionDataModel data,
  })  : _data = data,
        super(key: key);

  final TransactionDataModel _data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(NewHistoryTransactionDetailPage.TAG, arguments: _data);
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
                        _data.number!,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(
                        Formatter().fullDateFormat(_data.date!),
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
                              _data.total.toString()),
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
