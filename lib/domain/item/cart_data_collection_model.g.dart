// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_data_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartDataCollectionModel _$_$_CartDataCollectionModelFromJson(
    Map<String, dynamic> json) {
  return _$_CartDataCollectionModel(
    bought: json['bought'] == null
        ? null
        : BoughtItemDataModel.fromJson(json['bought'] as Map<String, dynamic>),
    item: json['item'] == null
        ? null
        : DataItemModel.fromJson(json['item'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CartDataCollectionModelToJson(
        _$_CartDataCollectionModel instance) =>
    <String, dynamic>{
      'bought': instance.bought,
      'item': instance.item,
    };
