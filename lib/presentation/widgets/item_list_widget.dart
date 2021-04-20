import 'package:flutter/material.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/utils/constants.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({
    Key key,
    @required this.item,
  }) : super(key: key);
  final DataItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image:
                        NetworkImage("${Constants().imageBaseUrl}${item.pic}"),
                    fit: BoxFit.cover,
                    onError: (exception, stackTrace) =>
                        AssetImage('assets/broken_image.png'),
                  )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 50,
                  child: Text(
                    item.itemName,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                (item.qty == "null" || item.qty == "")
                    ? Text(
                        "Quantity :0",
                        style: TextStyle(fontSize: 13),
                      )
                    : Text(
                        "Quantity : ${double.parse(item.qty).toStringAsFixed(0)}",
                        style: TextStyle(fontSize: 13)),
                SizedBox(
                  height: 2.0,
                ),
                // (userData == null)
                //     ? _itemPrice()
                //     : (userData.typeIds == null)
                //         ? _itemPrice()
                //         : (userData.typeIds ==
                //                     Constants().customerTypeReseller ||
                //                 userData.typeIds ==
                //                     Constants().customerTypeReseller2)
                //             ? Text(
                //                 "Reseller : " +
                //                     "Rp. ${Fun().formatStringCurrency(item.newPrice)}",
                //                 style: TextStyle(color: Colors.green))
                //             : _itemPrice(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
