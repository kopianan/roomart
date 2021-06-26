// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataItemModel _$_$_DataItemModelFromJson(Map<String, dynamic> json) {
  return _$_DataItemModel(
    itemId: json['item_id'] as String?,
    itemCode: json['item_code'] as String?,
    barcode: json['barcode'] as String?,
    itemSku: json['item_sku'] as String?,
    updateDate: json['update_date'] as String?,
    kategoriId: json['kategori_id'] as String?,
    internalCode: json['internal_code'] as String?,
    kategoriCode: json['kategori_code'] as String?,
    kategori: json['kategori'] as String?,
    katPicture: json['kat_picture'] as String?,
    itemName: json['item_name'] as String?,
    displayDesc: json['display_desc'] as String?,
    itemPrice: json['item_price'] as String?,
    customerTypeId: json['customer_type_id'] as String?,
    newPrice: json['new_price'] as String?,
    itmPriceFmt: json['itm_price_fmt'] as String?,
    isFixedPrice: json['is_fixed_price'] as String?,
    qty: json['qty'] as String?,
    qtyCart: json['qty_cart'] as String?,
    unitCode: json['unit_code'] as String?,
    taxCode: json['tax_code'] as String?,
    pic: json['pic'] as String?,
    displayStore: json['display_store'] as String?,
    priceListCode: json['price_list_code'] as String?,
    weight: json['weight'] as String?,
    inOrder: json['in_order'] as String?,
  );
}

Map<String, dynamic> _$_$_DataItemModelToJson(_$_DataItemModel instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'item_code': instance.itemCode,
      'barcode': instance.barcode,
      'item_sku': instance.itemSku,
      'update_date': instance.updateDate,
      'kategori_id': instance.kategoriId,
      'internal_code': instance.internalCode,
      'kategori_code': instance.kategoriCode,
      'kategori': instance.kategori,
      'kat_picture': instance.katPicture,
      'item_name': instance.itemName,
      'display_desc': instance.displayDesc,
      'item_price': instance.itemPrice,
      'customer_type_id': instance.customerTypeId,
      'new_price': instance.newPrice,
      'itm_price_fmt': instance.itmPriceFmt,
      'is_fixed_price': instance.isFixedPrice,
      'qty': instance.qty,
      'qty_cart': instance.qtyCart,
      'unit_code': instance.unitCode,
      'tax_code': instance.taxCode,
      'pic': instance.pic,
      'display_store': instance.displayStore,
      'price_list_code': instance.priceListCode,
      'weight': instance.weight,
      'in_order': instance.inOrder,
    };
