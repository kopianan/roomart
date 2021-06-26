import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_item_data_model.freezed.dart';
part 'transaction_item_data_model.g.dart';

@freezed
 class TransactionItemDataModel with _$TransactionItemDataModel {
  factory TransactionItemDataModel({
    @JsonKey(name: "ID") String? iD,
    @JsonKey(name: "TransactionID") String? transactionID,
    @JsonKey(name: "ItemID") String? itemID,
    @JsonKey(name: "ItemName") String? itemName,
    @JsonKey(name: "Qty") int? qty,
    @JsonKey(name: "ResellerPrice") double? resellerPrice,
    @JsonKey(name: "Price") double? price,
    @JsonKey(name: "Cashback") double? cashback,
    @JsonKey(name: "ItemImage") String? itemImage,
    @JsonKey(name: "Unit") String? unit,
    @JsonKey(name: "Tax") String? tax,
    @JsonKey(name: "Discount") double? discount,
    @JsonKey(name: "Date") String? date,
  }) = _TransactionItemDataModel;

  factory TransactionItemDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemDataModelFromJson(json);
}
