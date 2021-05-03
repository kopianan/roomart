import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/payment/payment_controller.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/domain/transaction/trans_item/trans_post_data_model.dart';
import 'package:roomart/domain/transaction/trans_item/trans_request.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/address/add_address_page.dart';
import 'package:roomart/presentation/delivery/delivery_page.dart';
import 'package:roomart/presentation/discount/discount_page.dart';
import 'package:roomart/presentation/payment/widgets/delivery_detail.dart';
import 'package:roomart/presentation/payment/widgets/item_list_detail.dart';
import 'package:roomart/presentation/payment/widgets/payment_method_detail.dart';
import 'package:roomart/presentation/payment/widgets/price_detail.dart';
import 'package:roomart/presentation/payment_method/payment_method_page.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';
import 'package:roomart/utils/my_color.dart';

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
  final paymentController = Get.put(PaymentController());
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
        builder: (trans) => Column(
          children: [
            Expanded(
              child: CustomScrollView(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                        Text("Pengiriman",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Icon(
                                            Icons.keyboard_arrow_right_outlined)
                                      ],
                                    ),
                                    Text("Pilih pengiriman"),
                                    GetX<TransactionController>(
                                        builder: (trX) =>
                                            (trX.getSelectedCost.cost == null)
                                                ? SizedBox()
                                                : DeliveryDetail(trX: trX))
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
                      child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 5,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(PaymentMethodPage.TAG);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Metode Pembayaran",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Pilih pengiriman"),
                                    ],
                                  ),
                                  Icon(Icons.keyboard_arrow_right_outlined),
                                ],
                              ),
                            ),
                          ),
                          GetX<PaymentController>(
                              builder: (payment) =>
                                  (payment.getSelectedPaymentMethod.name ==
                                          null)
                                      ? SizedBox()
                                      : PaymentMethodDetail(
                                          paymentController: payment,
                                        ))
                        ],
                      ),
                    ),
                  )),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Column(
                        children: [
                          PriceDetail(
                            label: "Sub total",
                            value: formatSubTotal(),
                          ),
                          PriceDetail(
                            label: "Discount",
                            color: Colors.green,
                            value: "- " +
                                Formatter().formatStringCurrency(
                                  transactionController.calculateDiscount(
                                      cartController.getCartSubTotalDouble()),
                                ),
                          ),
                          PriceDetail(
                            label: "Ongkos Kirim",
                            value: formatOngkosKirim(),
                          ),
                          Divider(),
                          PriceDetail(
                            label: "Grand Total",
                            value: formatGrandTotal(
                                cartController.getCartSubTotalDouble()),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    offset: Offset(-4, -3),
                    blurRadius: 3,
                    spreadRadius: 2,
                    color: Colors.grey[200])
              ]),
              child: Column(
                children: [
                  GetX<TransactionController>(
                    builder: (trans) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Promo dan discount",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {
                                Get.toNamed(DiscountPage.TAG);
                              },
                              child: (trans.getSelectedDiscount.eventDiscount ==
                                      null)
                                  ? Text("Tambah Promo")
                                  : Text(
                                      "${trans.getSelectedDiscount.customerName} ${trans.getSelectedDiscount.eventDiscount}")),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    child: DefaultButton1(
                      color: button1,
                      text: "Bayar",
                      onPressed: () {
                        var paymentMethod =
                            paymentController.getSelectedPaymentMethod;
                        var _salesOrder = TransRequest([
                          TransPostDataModel(
                              transNo: generateTransactionNumber(
                                  "RA-GODM", user.userId),
                              transType: "SO",
                              location: "GODM",
                              transDt: DateFormat("dd/MM/yyyy")
                                  .format(DateTime.now()),
                              customer: user.userId,
                              createBy: user.fullName,
                              pmtterm:
                                  "", //"DM147676476291369129846", //Payment term
                              // bankId: (Provider.of<PaymentMethod>(context)
                              //             .getBankTransferID() ==
                              //         null)
                              //     ? null
                              //     : Provider.of<PaymentMethod>(context)
                              //         .getBankTransferID(),
                              pmttype:
                                  paymentMethod.sId, //Kode Id metode pembayaran

                              totalDiscount: "",
                              parentId: Constants().resellerParentID,
                              isReseller: authController.checkIfReseller(),
                              email: user.email,
                              fullname: user.fullName,
                              remark:
                                  "Penerima: ${user.fullName}\nNomor Hp: ${user.phone}\nPengiriman :Pengirima\nAlamat :  ${user.address}\nProvinsi: ${user.province}\nCity: ${user.city}\n",
                              details: cartController.getCartItemData
                                  .map((e) => e.bought)
                                  .toList())
                        ]);
                        print(json.encode(_salesOrder));
                      },
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

  String generateTransactionNumber(String prefix, String customerId) {
    var rnd = Random();
    var next = rnd.nextDouble() * 1000;
    while (next < 1000) {
      next *= 10;
    }
    var number = prefix +
        customerId.substring(customerId.length - 4, customerId.length) +
        "-" +
        DateFormat("yyMM").format(DateTime.now()) +
        "-" +
        next.toInt().toString().padLeft(3, '0');
    print(number);
    return number;
  }

  String formatSubTotal() {
    return Formatter().formatStringCurrency(cartController.getCartSubTotal());
  }

  String formatGrandTotal(double subtotal) {
    var total = transactionController.calculateGrandTotal(subtotal);
    return Formatter().formatStringCurrency(total.toString());
  }

  String formatDiscount() {
    var _disc = transactionController.getSelectedDiscount;
    if (_disc.eventDiscount == null) {
      return "IDR 0";
    } else {
      try {
        String _percent = transactionController
            .getSelectedDiscount.eventDiscount
            .split("%")
            .first;
        return Formatter().formatStringCurrency(_percent);
      } catch (e) {
        return "0";
      }
    }
  }

  String formatOngkosKirim() {
    double _cost = transactionController.calculateDeliveryCost();
    var _formated =
        Formatter().formatStringCurrency((_cost.toString()).toString());
    return _formated;
  }
}
