import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/address/add_address_page.dart';
import 'package:roomart/presentation/delivery/delivery_page.dart';
import 'package:roomart/presentation/payment/widgets/item_list_detail.dart';
import 'package:roomart/utils/formater.dart';

import '../../application/core/cart_controller.dart';

class PaymentPage extends StatefulWidget {
  static final String TAG = '/payment_page';
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final cartController = Get.put(CartController());
  final authController = Get.put(AuthController());
  final transactionController = Get.put(TransactionController());
  UserDataModel user;
  @override
  void initState() {
    user = authController.getUserDataModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<TransactionController>(
        builder: (trans) => CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("Pembayaran"),
            ),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate((context, index) {
            //     return Column(
            //       children: [
            //         ItemListDetail(index: index),
            //         Divider(),
            //       ],
            //     );
            //   }, childCount: cartController.getCartItemData.length),
            // ),
            //
            SliverList(
                delegate: SliverChildListDelegate([
              ItemListDetail(index: 0),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Show more",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    ))
                  ],
                ),
              )
            ])),
            SliverList(
                delegate: SliverChildListDelegate([
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 5,
                margin: EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            Get.toNamed(AddAddressPage.TAG);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "${user.fullName} - ( ${user.phone} )"),
                                    Text(
                                      "Alamat lengkap disini agak panjang aja",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                                Icon(Icons.keyboard_arrow_right_outlined),
                              ],
                            ),
                          )),
                      Divider(),
                      InkWell(
                        onTap: () {
                          Get.toNamed(DeliveryPage.TAG);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pengiriman",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.keyboard_arrow_right_outlined),
                                ],
                              ),
                              Text("Pilih pengiriman"),
                              GetX<TransactionController>(
                                  builder: (trX) =>
                                      (trX.getSelectedCost.cost == null)
                                          ? SizedBox()
                                          : DeliveryDetail(
                                              trX: trX,
                                            ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ])),
            SliverToBoxAdapter(
                child: InkWell(
              onTap: () {},
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 5,
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Metode Pembayaran",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Pilih pengiriman"),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right_outlined),
                      ],
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class DeliveryDetail extends StatelessWidget {
  const DeliveryDetail({Key key, this.trX}) : super(key: key);
  final TransactionController trX;
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
                    "${trX.getSelectedCost.service} (${trX.getSelectedCost.cost.first.etd} hari)"),
                Text(trX.getSelectedCost.description)
              ],
            ),
          ),
          Text(
            Formatter().formatStringCurrencyNoSymbol(
              trX.getSelectedCost.cost.first.value.toString(),
            ),
            style: TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }
}
