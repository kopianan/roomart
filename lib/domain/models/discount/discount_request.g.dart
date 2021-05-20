// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountRequest _$_$_DiscountRequestFromJson(Map<String, dynamic> json) {
  return _$_DiscountRequest(
    token: json['token'] as String,
    code: json['Code'] as String,
    total: json['ShoppingTotal'] as String,
  );
}

Map<String, dynamic> _$_$_DiscountRequestToJson(_$_DiscountRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'Code': instance.code,
      'ShoppingTotal': instance.total,
    };
