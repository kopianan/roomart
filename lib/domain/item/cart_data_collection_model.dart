import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/domain/transaction/trans_item/bought_item_data_model.dart';

part 'cart_data_collection_model.freezed.dart';
part 'cart_data_collection_model.g.dart';

@freezed
 class CartDataCollectionModel with _$CartDataCollectionModel {
  factory CartDataCollectionModel(
      {BoughtItemDataModel? bought,
      DataItemModel? item}) = _CartDataCollectionModel;

  factory CartDataCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CartDataCollectionModelFromJson(json);
}
