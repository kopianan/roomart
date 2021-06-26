import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/presentation/config_widgets/widget_collection.dart';
import 'package:roomart/presentation/core/widget_collection.dart';
import 'package:roomart/presentation/item_detail/item_detail_page.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';
import 'package:get/get.dart';

class ItemListWidget extends StatelessWidget {
  ItemListWidget({
    Key? key,
    required this.item,
  }) : super(key: key);
  final DataItemModel item;

  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(ItemDetailPage.TAG, arguments: item);
      },
      child: GetBuilder<AuthController>(
        builder: (auth) => Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 2,
                    color: Colors.grey[200]!,
                    offset: Offset(2, 2))
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                // flex: 7,
                child: CustomImageProvider(
                    url: "${Constants().imageBaseUrl}${item.pic}"),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 8),
                    Container(
                      child: Text(
                        item.itemName!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                            "Quantity : ${double.parse(item.qty!).toStringAsFixed(0)}",
                            style: TextStyle(fontSize: 13)),
                    SizedBox(
                      height: 5.0,
                    ),
                    resellerPrice(
                        auth.checkIfReseller(), item.itemPrice, item.newPrice)

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
        ),
      ),
    );
  }
}
