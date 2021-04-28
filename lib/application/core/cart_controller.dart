import 'package:get/get.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/domain/item/trans_item/bought_item_data_model.dart';

class CartController extends GetxController {
  List<BoughtItemDataModel> itemList = <BoughtItemDataModel>[].obs;
  List<DataItemModel> fullItemModel = <DataItemModel>[].obs;
  var subTotal = 0.0.obs;

  void addDataToList(DataItemModel data, {String qty = "1"}) {
    final _converted = BoughtItemDataModel(
      unit: "PCS",
      itemCode: data.itemCode,
      itemId: data.itemId,
      qty: qty,
      price: data.itemPrice,
      discount: "0",
    );
    this.itemList.add(_converted);
    this.fullItemModel.add(data);
  }

  void addQuantity(BoughtItemDataModel item, String newQty) {
    List<BoughtItemDataModel> _new = [];
    List<DataItemModel> _full = [];

    var _index = this.itemList.indexOf(item);
    //HALF
    var _filtered = itemList
        .firstWhere((element) => element.itemId == item.itemId)
        .copyWith(qty: newQty);
    _new.add(_filtered);

    _full.add(fullItemModel[_index]);

    itemList.replaceRange(_index, _index + 1, _new);
    fullItemModel.replaceRange(_index, _index + 1, _full);
  }

  String getCartSubTotal() {
    var _subtotal = 0.0;
    itemList.forEach((element) {
      _subtotal += int.parse(element.qty) * double.parse(element.price);
    });
    subTotal.value = _subtotal;
    return subTotal.value.toString();
  }

  List<BoughtItemDataModel> get getItemList => this.itemList;
  List<DataItemModel> get getFullItemList => this.fullItemModel;
}
