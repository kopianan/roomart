import 'package:get/get.dart';
import 'package:roomart/domain/item/data_item_model.dart';

class ItemController extends GetxController {
  List<DataItemModel> listData = <DataItemModel>[].obs;
  RxInt offset = 0.obs;
  RxInt searchOffset = 0.obs;

  void setListData(List<DataItemModel> data) {
    this.listData.addAll(data);
  }

  void resetListData() {
    this.listData.clear();
  }

  List<DataItemModel> get getListData => this.listData;

  void setOffset(int newOffset) {
    offset.value = newOffset;
  }

  int get getOffset => this.offset.value;

  void setSearchOffset(int newOffset) {
    searchOffset.value = newOffset;
  }

  int get getSearchOffset => this.searchOffset.value;
}
