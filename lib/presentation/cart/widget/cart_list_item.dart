import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_touch_spin/flutter_touch_spin.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/domain/item/trans_item/bought_item_data_model.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';

class CartListItem extends StatefulWidget {
  CartListItem({@required this.index});
  final int index;
  @override
  _CartListItemState createState() => _CartListItemState();
}

class _CartListItemState extends State<CartListItem> {
  @override
  void initState() {
    super.initState();
  }

  // final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return GetX<CartController>(
      builder: (cart) => Slidable(
        actionPane: SlidableDrawerActionPane(),
        direction: Axis.horizontal,
        actionExtentRatio: 0.25,
        secondaryActions: [
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () => {},
          ),
        ],
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                child: FadeInImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(Constants().imageBaseUrl +
                      cart.getFullItemList[widget.index].pic),
                  placeholder: AssetImage('assets/broken_image.png'),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      cart.getFullItemList[widget.index].itemName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      Formatter().formatStringCurrency((double.parse(
                                  cart.getItemList[widget.index].price) *
                              double.parse(cart.getItemList[widget.index].qty))
                          .toString()),
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TouchSpin(
                    addIcon: Icon(Icons.add_circle_outline),
                    subtractIcon: Icon(Icons.remove_circle_outline_outlined),
                    onChanged: (val) {
                      cart.addQuantity(cart.getItemList[widget.index],
                          val.toStringAsFixed(0));
                    },
                    value: int.parse(cart.getItemList[widget.index].qty),
                    displayFormat: NumberFormat(),
                    textStyle:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
