import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/presentation/address/add_address_page.dart';

import '../../application/core/cart_controller.dart';

class PaymentPage extends StatefulWidget {
  static final String TAG = '/payment_page';
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Pembayaran"),
          ),
          SliverList(
              delegate: SliverChildListDelegate(cartController.getFullItemList
                  .map((e) => Text(e.itemName))
                  .toList())),
          SliverList(
              delegate: SliverChildListDelegate([
            Card(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(AddAddressPage.TAG);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nama orang - (08137715139)"),
                            Text(
                              "Alamat lengkap disini agak panjang aja",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                  Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pengiriman",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Pilih pengiriman")
                    ],
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
