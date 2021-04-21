// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_item_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionItemDataModel _$_$_TransactionItemDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionItemDataModel(
    iD: json['ID'] as String,
    transactionID: json['TransactionID'] as String,
    itemID: json['ItemID'] as String,
    itemName: json['ItemName'] as String,
    qty: json['Qty'] as int,
    resellerPrice: json['ResellerPrice'] as int,
    price: json['Price'] as int,
    cashback: json['Cashback'] as int,
    itemImage: json['ItemImage'] as String,
    unit: json['Unit'] as String,
    tax: json['Tax'] as String,
    discount: json['Discount'] as int,
    date: json['Date'] as String,
  );
}

Map<String, dynamic> _$_$_TransactionItemDataModelToJson(
        _$_TransactionItemDataModel instance) =>
    <String, dynamic>{
      'ID': instance.iD,
      'TransactionID': instance.transactionID,
      'ItemID': instance.itemID,
      'ItemName': instance.itemName,
      'Qty': instance.qty,
      'ResellerPrice': instance.resellerPrice,
      'Price': instance.price,
      'Cashback': instance.cashback,
      'ItemImage': instance.itemImage,
      'Unit': instance.unit,
      'Tax': instance.tax,
      'Discount': instance.discount,
      'Date': instance.date,
    };
