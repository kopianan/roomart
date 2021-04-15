import 'package:get/get.dart';
import 'package:roomart/domain/item/data_item_model.dart';

class ItemController extends GetxController {
  List<DataItemModel> listData = <DataItemModel>[].obs;

  void setListData(List<DataItemModel> data) {
    this.listData.addAll(data);
  }

  List<DataItemModel> get getListData => this.listData;
}
