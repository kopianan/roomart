import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';
import 'package:roomart/utils/my_color.dart';

class ItemDetailPage extends StatefulWidget {
  static final String TAG = '/item_detail_page';
  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  DataItemModel data;
  @override
  void initState() {
    data = Get.arguments as DataItemModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            "${Constants().imageBaseUrl}${data.pic}"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.itemName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          data.kategori,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                        )
                      ],
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      Formatter().formatStringCurrency(data.itemPrice),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                    )
                  ],
                ),
              )
            ],
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white, size: 20),
          ),
        ],
      ),
    );
  }
}
