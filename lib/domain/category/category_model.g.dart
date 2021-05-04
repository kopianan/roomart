// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$_$_CategoryModelFromJson(Map<String, dynamic> json) {
  return _$_CategoryModel(
    kategoriId: json['kategori_id'] as String,
    parentId: json['parent_id'] as String,
    internalCode: json['internal_code'] as String,
    kategoriCode: json['kategori_code'] as String,
    description: json['description'] as String,
    picture: json['picture'] as String,
    displayStore: json['display_store'] as String,
    hasChild: json['has_child'] as String,
    count: json['count'] as String,
    countTotal: json['count_total'] as String ?? '0',
  );
}

Map<String, dynamic> _$_$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'kategori_id': instance.kategoriId,
      'parent_id': instance.parentId,
      'internal_code': instance.internalCode,
      'kategori_code': instance.kategoriCode,
      'description': instance.description,
      'picture': instance.picture,
      'display_store': instance.displayStore,
      'has_child': instance.hasChild,
      'count': instance.count,
      'count_total': instance.countTotal,
    };
