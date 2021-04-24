import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
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
    setDetailList();
    super.initState();
  }

  List<PDetail> listData;
  void setDetailList() {
    List _desc = data.displayDesc.split("<br/>");
    listData = [
      PDetail("Merk", checkIfNull(_desc, 0)),
      PDetail("Ukuran", checkIfNull(_desc, 1)),
      PDetail("Bahan", checkIfNull(_desc, 2)),
      PDetail("Berat", checkIfNull(_desc, 3)),
      PDetail("Lainnya", checkIfNull(_desc, 4).replaceAll("<br>", ",")),
    ];
  }

  checkIfNull(List list, int status) {
    try {
      return list[status];
    } catch (e) {
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
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
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
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
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Detail Produk",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: listData
                                .map(
                                  (list) => Container(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            list.label,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 5,
                                            child: Text(
                                              list.value,
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                                .toList()),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: DefaultButton2(
                        color: button2,
                        text: "Buy Now",
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: DefaultButton1(
                        color: button1,
                        text: "Add To Cart",
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PDetail {
  String label;
  String value;
  PDetail(this.label, this.value);
}
