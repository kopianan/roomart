import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/domain/item/cart_data_collection_model.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/domain/transaction/trans_item/bought_item_data_model.dart';

class CartController extends GetxController {
  List<CartDataCollectionModel> cartCollection =
      <CartDataCollectionModel>[].obs;
  var subTotal = 0.0.obs;
  void removeDataFromList(int index) {
    cartCollection.removeAt(index);
  }

  void addOngkirOrDiscount(CartDataCollectionModel data) {
    cartCollection.add(data);
  }

  void addForTheFirstTime(DataItemModel data) {
    try {
      //data already there
      var _filter = cartCollection
          .firstWhere((element) => element.bought.itemId == data.itemId);
      var _newQty = (int.parse(_filter.bought.qty) + 1).toString();
      addQuantity(_filter, _newQty);
    } catch (e) {
      final _converted = BoughtItemDataModel(
        unit: "PCS",
        itemCode: data.itemCode,
        itemId: data.itemId,
        qty: "1",
        price: data.itemPrice,
        discount: "0",
        itemImage: data.pic,
        itemName: data.itemName,
        resellerPrice: double.parse(data.newPrice),
        tax: "NoPPN",
      );

      var _dta = CartDataCollectionModel(item: data, bought: _converted);
      cartCollection.add(_dta);
    }
  }

  void addDataToList(DataItemModel data, {String qty = "1"}) {
    final _converted = BoughtItemDataModel(
      unit: "PCS",
      itemCode: data.itemCode,
      itemId: data.itemId,
      qty: qty,
      price: data.itemPrice,
      discount: "0",
      itemImage: data.pic,
      itemName: data.itemName,
      resellerPrice: double.parse(data.newPrice),
      tax: "NoPPN",
    );

    var _dta = CartDataCollectionModel(item: data, bought: _converted);

    cartCollection.add(_dta);
  }

  void addQuantity(CartDataCollectionModel item, String newQty) {
    List<CartDataCollectionModel> _new = [];

    var _index = cartCollection.indexOf(item);
    var _firstData = cartCollection
        .firstWhere((element) => element.bought == item.bought)
        .bought
        .copyWith(qty: newQty);
    _new.add(cartCollection[_index].copyWith(bought: _firstData));

    cartCollection.replaceRange(_index, _index + 1, _new);
  }

  // String getCartSubTotal() {
  //   var _subtotal = 0.0;

  //   cartCollection.forEach((element) {
  //     if (authController.checkIfReseller()) {
  //       _subtotal +=
  //           int.parse(element.bought.qty) * double.parse(element.bought.price);
  //     }
  //   });
  //   subTotal.value = _subtotal;
  //   return subTotal.value.toString();
  // }

  double getCartSubTotalDouble({@required bool isReseller}) {
    var _subtotal = 0.0;

    cartCollection.forEach((element) {
      if (isReseller) {
        _subtotal +=
            int.parse(element.bought.qty) * element.bought.resellerPrice;
      } else {
        _subtotal +=
            int.parse(element.bought.qty) * double.parse(element.bought.price);
      }
    });
    subTotal.value = _subtotal;
    return subTotal.value;
  }

  double calculateWeight() {
    var _weighTotal = 0.0;

    cartCollection.forEach((element) {
      if (element.item.weight.isEmpty || (element.item.weight == "")) {
        _weighTotal += 1000 * double.parse(element.bought.qty);
      } else
        _weighTotal += double.parse(element.item.weight) *
            double.parse(element.bought.qty);
    });
    return _weighTotal;
  }

  List<CartDataCollectionModel> get getCartItemData => this.cartCollection;
}
