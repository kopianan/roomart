import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/application/core/cart_controller.dart';

import 'widget/cart_list_item.dart';

class CartPage extends StatelessWidget {
  static final String TAG = '/cart_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keranjang Belanja"),
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: GetBuilder<CartController>(
        builder: (cart) => Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: cart.getItemList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CartListItem(
                      index: index,
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text("Total Belanja",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    child: Text('Rp. 234',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width / 2,
                    child: new FlatButton(
                      textColor: Colors.yellow,
                      onPressed: () {},
                      child: Text(
                        "Saya Masih Ingin Belanja",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: MediaQuery.of(context).size.width / 2,
                    child: new FlatButton(
                      textColor: Colors.pink,
                      onPressed: () {},
                      child: Text(
                        "Lanjutkan Pembayaran",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
