import 'package:flutter/material.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/utils/formater.dart';

class DeliveryDetail extends StatelessWidget {
  const DeliveryDetail({Key? key, this.trX}) : super(key: key);
  final TransactionController? trX;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.orange)),
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.delivery_dining,
                size: 30,
              )),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "${trX!.getSelectedCost!.service} (${trX!.getSelectedCost!.cost!.first.etd} hari)"),
                Text(trX!.getSelectedCost!.description!)
              ],
            ),
          ),
          Text(
            Formatter().formatStringCurrencyNoSymbol(
              trX!.getSelectedCost!.cost!.first.value.toString(),
            ),
            style: TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }
}
