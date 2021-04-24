import 'package:flutter/material.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/utils/formater.dart';

class TransactionItemWidget extends StatelessWidget {
  const TransactionItemWidget({
    Key key,
    @required TransactionDataModel data,
  })  : _data = data,
        super(key: key);

  final TransactionDataModel _data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200],
                blurRadius: 3,
                spreadRadius: 2,
                offset: Offset(1, 1))
          ]),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
            decoration: BoxDecoration(
                color: Color(0xFFFFB183),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Text(
                  Formatter().dateFormatter(_data.date),
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  Formatter().dateFormatGetYeard(_data.date),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _data.number,
                  style: TextStyle(fontSize: 18),
                ),
                Text("Customer Name : " + _data.customerName),
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    Formatter()
                        .formatStringCurrencyNoSymbol(_data.total.toString()),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
