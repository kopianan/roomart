import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/domain/transaction/trans_item/bought_item_data_model.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';

class ItemListDetail extends StatefulWidget {
  ItemListDetail({@required this.index});
  final int index;
  @override
  _ItemListDetailState createState() => _ItemListDetailState();
}

class _ItemListDetailState extends State<ItemListDetail> {
  @override
  void initState() {
    super.initState();
  }

  final auth = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetX<CartController>(
      builder: (cart) {
        var fullItem = cart.getCartItemData[widget.index].item;
        var bought = cart.getCartItemData[widget.index].bought;
        return Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                width: 100,
                height: 100,
                child: FadeInImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(Constants().imageBaseUrl + fullItem.pic),
                  placeholder: AssetImage('assets/broken_image.png'),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      fullItem.itemName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text("Quantity: " + int.parse(bought.qty).toString(),
                        style: TextStyle())
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "IDR",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    Formatter()
                        .formatStringCurrencyNoSymbol(isResellerCheck(bought)),
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  String isResellerCheck(BoughtItemDataModel data) {
    double price = 0;
    if (auth.checkIfReseller()) {
      price = data.resellerPrice * double.parse(data.qty);
    } else {
      price = (double.parse(data.price) * double.parse(data.qty));
    }
    return price.toString();
  }
}
