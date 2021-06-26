// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bought_item_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoughtItemDataModel _$_$_BoughtItemDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_BoughtItemDataModel(
    itemCode: json['item_code'] as String?,
    itemId: json['item_id'] as String?,
    qty: json['qty'] as String?,
    unit: json['unit'] as String?,
    price: json['price'] as String?,
    tax: json['tax'] as String?,
    itemName: json['item_name'] as String?,
    resellerPrice: (json['reseller_price'] as num?)?.toDouble(),
    itemImage: json['itemImage'] as String?,
    discount: json['discount'] as String?,
  );
}

Map<String, dynamic> _$_$_BoughtItemDataModelToJson(
        _$_BoughtItemDataModel instance) =>
    <String, dynamic>{
      'item_code': instance.itemCode,
      'item_id': instance.itemId,
      'qty': instance.qty,
      'unit': instance.unit,
      'price': instance.price,
      'tax': instance.tax,
      'item_name': instance.itemName,
      'reseller_price': instance.resellerPrice,
      'itemImage': instance.itemImage,
      'discount': instance.discount,
    };
