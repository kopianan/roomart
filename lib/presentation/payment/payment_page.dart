import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/payment/payment_controller.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/core/payment_method_enum.dart';
import 'package:roomart/domain/item/cart_data_collection_model.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/domain/models/discount/discount_code.dart';
import 'package:roomart/domain/models/discount/discount_data_model.dart';
import 'package:roomart/domain/payment_method/payment_method_data_model.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/costs.dart';
import 'package:roomart/domain/transaction/trans_item/bought_item_data_model.dart';
import 'package:roomart/domain/transaction/trans_item/trans_post_data_model.dart';
import 'package:roomart/domain/transaction/trans_item/trans_request.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/address/add_address_page.dart';
import 'package:roomart/presentation/delivery/delivery_page.dart';
import 'package:roomart/presentation/discount/discount_page.dart';
import 'package:roomart/presentation/payment/payment_midtrans_page.dart';
import 'package:roomart/presentation/payment/payment_progress_page.dart';
import 'package:roomart/presentation/payment/payment_status_page.dart';
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
import '../../injection.dart';

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
  final transCubit = getIt<TransactionCubit>();
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
                          Expanded(child: Divider(thickness: 2)),
                          SizedBox(width: 15),
                          Text("Show more",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
                          SizedBox(width: 15),
                          Expanded(child: Divider(thickness: 2))
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
                                      GetBuilder<AuthController>(
                                        builder: (_user) => Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "${_user.getUserDataModel.fullName} - ( ${_user.getUserDataModel.phone} )"),
                                              Text(
                                                "${_user.getUserDataModel.address}, ${_user.getUserDataModel.province}, ${_user.getUserDataModel.village} ${_user.getUserDataModel.city}, ${_user.getUserDataModel.terrId1}",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined),
                                    ],
                                  ),
                                )),
                            Divider(),
                            InkWell(
                              onTap: () {
                                //check if user have data
                                var _user = authController.getUserDataModel;
                                if ((_user.terrId1 == null ||
                                        _user.terrId1.isEmpty) ||
                                    (_user.terrId3 == null ||
                                        _user.terrId1.isEmpty)) {
                                  //check if there is origin
                                  Get.showSnackbar(GetBar(
                                    title: "Address",
                                    message: "Please add address",
                                  ));
                                } else {
                                  Get.toNamed(DeliveryPage.TAG);
                                }
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
                                      cartController.getCartSubTotalDouble(
                                          isReseller: authController
                                              .checkIfReseller())),
                                ),
                          ),
                          GetX<TransactionController>(
                            builder: (_trans) => PriceDetail(
                                label: "Coupon Discount",
                                color: Colors.green,
                                value: "- " +
                                    Formatter().formatStringCurrency(_trans
                                        .getSelectedDiscountCode
                                        .totalDiscount)),
                          ),
                          PriceDetail(
                            label: "Ongkos Kirim",
                            value: formatOngkosKirim(),
                          ),
                          Divider(),
                          GetBuilder<CartController>(
                            builder: (_cart) => PriceDetail(
                              label: "Grand Total",
                              value: formatGrandTotal(
                                  _cart.getCartSubTotalDouble(
                                      isReseller:
                                          authController.checkIfReseller())),
                            ),
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
                          (trans.getSelectedDiscount.eventDiscount == null &&
                                  trans.getSelectedDiscountCode.code == null)
                              ? TextButton(
                                  onPressed: () {
                                    Get.toNamed(DiscountPage.TAG);
                                  },
                                  child: Text("Tambah Promo"))
                              : TextButton(
                                  onPressed: () {
                                    //remove discount
                                    Get.dialog(AlertDialog(
                                      title: Text("Hapus Discount "),
                                      content:
                                          Text("Hapus discount saat ini ? "),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            trans.setSelectedDiscount(
                                                DiscountDataModel());
                                            trans.setSelectedDiscountCode(
                                                DiscountCode(
                                                    totalDiscount: "0"));
                                            Get.back();
                                          },
                                          child: Text("Ya"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: Text("Batal"),
                                        ),
                                      ],
                                    ));
                                  },
                                  child: (trans.getSelectedDiscount
                                              .eventDiscount ==
                                          null)
                                      ? Text(
                                          "${trans.getSelectedDiscountCode.code}")
                                      : Text(
                                          "${trans.getSelectedDiscount.customerCode}"))
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
                        if (isAllDataComplete()) {
                          Get.dialog(AlertDialog(
                            title: Text("Bayar"),
                            content: Text(
                                "Apakah anda yakin akan melanjutkan pembayaran ? "),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Get.back();

                                    makePayment();
                                  },
                                  child: Text("Ya")),
                              TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text("Tidak")),
                            ],
                          ));
                        }
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

  bool isAllDataComplete() {
    if (transactionController.getSelectedCost == Costs()) {
      Get.showSnackbar(GetBar(
        message: "Harap pilih pengiriman",
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 2),
      ));
      return false;
    }
    if (paymentController.getSelectedPaymentMethod ==
        PaymentMethodDataModel()) {
      Get.showSnackbar(GetBar(
        message: "Harap pilih metode pembayaran",
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 2),
      ));
      return false;
    }
    return true;
  }

  List<CartDataCollectionModel> paidItem = <CartDataCollectionModel>[];
  void addDiscountToItemList() {
    //set discount price here

    List<CartDataCollectionModel> newBought = <CartDataCollectionModel>[];
    paidItem.addAll(cartController.getCartItemData);

    //filter data+

    print(paidItem.first.bought);
    paidItem.forEach((element) {
      var _new = element.bought.copyWith(
          price: cartController.checkResellerPrice(element.item),
          resellerPrice: double.parse(element.item.itemPrice));
      newBought.add(CartDataCollectionModel(bought: _new, item: element.item));
    });
    paidItem.assignAll(newBought);

    print(paidItem.first.bought);
    var data = transactionController.calculateDiscount(cartController
        .getCartSubTotalDouble(isReseller: authController.checkIfReseller()));
    if ((transactionController.getSelectedDiscount.isBlank) ||
        (transactionController.getSelectedDiscount.customerCode != null)) {
      var _dsicount = BoughtItemDataModel(
          itemId: "DM157597749267900354896",
          itemCode: "990992",
          itemName: "PROMO APPS",
          price: "-" + data,
          qty: "1",
          resellerPrice: double.parse("-" + data),
          discount: "0.0",
          tax: "1",
          unit: "PCS",
          itemImage: "");
      var _discountCart =
          CartDataCollectionModel(bought: _dsicount, item: DataItemModel());
      paidItem.add(_discountCart);
    }

    if (transactionController.getSelectedDiscountCode.totalDiscount != "0") {
      var _dsicount = BoughtItemDataModel(
          itemId: "DM157597749267900354896",
          itemCode: "990992",
          itemName: "PROMO APPS",
          price:
              "-" + transactionController.getSelectedDiscountCode.totalDiscount,
          resellerPrice: double.parse(
            "-" + transactionController.getSelectedDiscountCode.totalDiscount,
          ),
          qty: "1",
          discount: "0.0",
          tax: "1",
          unit: "PCS",
          itemImage: "");
      var _discountCart =
          CartDataCollectionModel(bought: _dsicount, item: DataItemModel());
      paidItem.add(_discountCart);
    }
    var _selected;
    try {
      _selected = Constants().courierList.firstWhere((element) =>
          element.name.toLowerCase() ==
          transactionController.getSelectedFullDelivery.code.toLowerCase());
    } catch (e) {
      _selected = Constants()
          .courierList
          .firstWhere((element) => element.name == "Default");
    }

    var boughitem = BoughtItemDataModel(
        itemId: _selected.id,
        itemCode: _selected.code,
        itemName: "ONGKIR",
        // TODO:change price
        price:
            transactionController.getSelectedCost.cost.first.value.toString(),
        resellerPrice: double.parse(
            transactionController.getSelectedCost.cost.first.value.toString()),
        // price:"0",
        // resellerPrice: 0,
        qty: "1",
        discount: "",
        tax: "1",
        unit: "0",
        itemImage: "");
    var _ongkirCart =
        CartDataCollectionModel(bought: boughitem, item: DataItemModel());
    paidItem.add(_ongkirCart);
  }

  void makePayment() {
    if (paidItem.length == 0) addDiscountToItemList();
    var paymentMethod = paymentController.getSelectedPaymentMethod;

    var _salesOrder = TransRequest(token: Constants().tokenUltimo, salesTrans: [
      TransPostDataModel(
          transNo: generateTransactionNumber(
              "${Constants.transactionCode}-GODM", user.userId),
          transType: "SO",
          location: "GODM",
          transDt: DateFormat("dd/MM/yyyy").format(DateTime.now()),
          customer: user.userId,
          createBy: user.fullName,
          pmtterm: "", //"DM147676476291369129846", //Payment term
          // bankId: (Provider.of<PaymentMethod>(context)
          //             .getBankTransferID() ==
          //         null)
          //     ? null
          //     : Provider.of<PaymentMethod>(context)
          //         .getBankTransferID(),
          pmttype: paymentMethod.sId, //Kode Id metode pembayaran

          totalDiscount: "",
          parentId: Constants().resellerParentID,
          isReseller: authController.checkIfReseller(),
          email: user.email,
          fullname: user.fullName,
          remark:
              "Penerima: ${user.fullName}\nNomor Hp: ${user.phone}\nPengiriman :Pengirima\nAlamat :  ${user.address}\nProvinsi: ${user.province}\nCity: ${user.city}\n",
          details: paidItem.map((e) => e.bought).toList())
    ]);
    Get.toNamed(PaymentProgressPage.TAG, arguments: _salesOrder);
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
    return Formatter().formatStringCurrency(cartController
        .getCartSubTotalDouble(isReseller: authController.checkIfReseller())
        .toString());
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
