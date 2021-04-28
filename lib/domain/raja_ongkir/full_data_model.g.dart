// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FullDataModel _$_$_FullDataModelFromJson(Map<String, dynamic> json) {
  return _$_FullDataModel(
    cityId: json['city_id'] as String,
    provinceId: json['province_id'] as String,
    province: json['province'] as String,
    type: json['type'] as String,
    cityName: json['city_name'] as String,
    postalCode: json['postal_code'] as String,
  );
}

Map<String, dynamic> _$_$_FullDataModelToJson(_$_FullDataModel instance) =>
    <String, dynamic>{
      'city_id': instance.cityId,
      'province_id': instance.provinceId,
      'province': instance.province,
      'type': instance.type,
      'city_name': instance.cityName,
      'postal_code': instance.postalCode,
    };
