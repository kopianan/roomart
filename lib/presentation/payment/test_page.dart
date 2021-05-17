import 'package:flutter/material.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Icon(
              Icons.history,
              size: 100,
              color: Colors.orange,
            ),
            SizedBox(height: 10),
            Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Pembayran sedang diproses\nRefresh untuk check status",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
          DefaultButton1(
            color: Colors.orangeAccent,
            onPressed: () {},
            text: "Check pembayaran",
          )
        ],
      ),
    ));
  }
}
