import 'package:freezed_annotation/freezed_annotation.dart';


part 'data_item_model.freezed.dart';
part 'data_item_model.g.dart';

@freezed
 class DataItemModel with _$DataItemModel {
  factory DataItemModel({
    @JsonKey(name: 'item_id') String? itemId,
    @JsonKey(name: 'item_code') String? itemCode,
    @JsonKey(name: 'barcode') String? barcode,
    @JsonKey(name: 'item_sku') String? itemSku,
    @JsonKey(name: 'update_date') String? updateDate,
    @JsonKey(name: 'kategori_id') String? kategoriId,
    @JsonKey(name: 'internal_code') String? internalCode,
    @JsonKey(name: 'kategori_code') String? kategoriCode,
    @JsonKey(name: 'kategori') String? kategori,
    @JsonKey(name: 'kat_picture') String? katPicture,
    @JsonKey(name: 'item_name') String? itemName,
    @JsonKey(name: 'display_desc') String? displayDesc,
    @JsonKey(name: 'item_price') String? itemPrice,
    @JsonKey(name: 'customer_type_id') String? customerTypeId,
    @JsonKey(name: 'new_price') String? newPrice,
    @JsonKey(name: 'itm_price_fmt') String? itmPriceFmt,
    @JsonKey(name: 'is_fixed_price') String? isFixedPrice,
    @JsonKey(name: 'qty') String? qty,
    @JsonKey(name: 'qty_cart') String? qtyCart, //Added by Sai,
    @JsonKey(name: 'unit_code') String? unitCode,
    @JsonKey(name: 'tax_code') String? taxCode,
    @JsonKey(name: 'pic') String? pic,
    @JsonKey(name: 'display_store') String? displayStore,
    @JsonKey(name: 'price_list_code') String? priceListCode,
    @JsonKey(name: 'weight') String? weight,
    @JsonKey(name: 'in_order') String? inOrder,
  }) = _DataItemModel;

  factory DataItemModel.fromJson(Map<String, dynamic> json) =>
      _$DataItemModelFromJson(json);
}
