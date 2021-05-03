import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';
import 'package:roomart/presentation/payment/payment_page.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/formater.dart';

import 'widget/cart_list_item.dart';

class CartPage extends StatelessWidget {
  static final String TAG = '/cart_page';
  final authController = Get.put(AuthController());
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
      body: GetX<CartController>(
        builder: (cart) => (cart.getCartItemData.length == 0)
            ? Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_basket_outlined,
                        size: 70,
                        color: Colors.grey,
                      ),
                      Text(
                        "No Item",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
              )
            : Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: cart.getCartItemData.length,
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
                                  fontSize: 18, fontWeight: FontWeight.w300)),
                        ),
                        Container(
                          child: GetX<CartController>(
                            builder: (_) => Text(
                                Formatter()
                                    .formatStringCurrency(_.getCartSubTotal()),
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          child: new DefaultButton1(
                            color: Colors.orange,
                            text: "Lanjutkan Pembayaran",
                            onPressed: () {
                              if (authController.getUserDataModel == null ||
                                  authController.getUserDataModel.userId ==
                                      null) {
                                Get.offNamedUntil(
                                  DashboardPage.TAG,
                                  ModalRoute.withName(DashboardPage.TAG),
                                );
                              } else {
                                Get.toNamed(PaymentPage.TAG);
                              }
                            },
                          ))),
                ],
              ),
      ),
    );
  }
}
