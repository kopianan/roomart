import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/domain/update/update_news_data_model.dart';
import 'package:roomart/presentation/core/widget_collection.dart';

class UpdateDetailPage extends StatefulWidget {
  static final String TAG = '/update_detail_page';
  const UpdateDetailPage({Key? key}) : super(key: key);

  @override
  _UpdateDetailPageState createState() => _UpdateDetailPageState();
}

class _UpdateDetailPageState extends State<UpdateDetailPage> {
  UpdateNewsDataModel? _data;
  @override
  void initState() {
    _data = Get.arguments as UpdateNewsDataModel?;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 300,
            child: CustomImageProvider(
              url: _data!.imageURL,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: Text(
                    _data!.title!,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    _data!.title!,
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
