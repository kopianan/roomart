// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethodDataModel _$_$_PaymentMethodDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_PaymentMethodDataModel(
    sId: json['_id'] as String,
    code: json['code'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    isVoucher: json['is_voucher'] as String,
    isMulti: json['is_multi'] as String,
    isCoupon: json['is_coupon'] as String,
    isPos: json['is_pos'] as String,
  );
}

Map<String, dynamic> _$_$_PaymentMethodDataModelToJson(
        _$_PaymentMethodDataModel instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'is_voucher': instance.isVoucher,
      'is_multi': instance.isMulti,
      'is_coupon': instance.isCoupon,
      'is_pos': instance.isPos,
    };
