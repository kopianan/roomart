// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountDataModel _$_$_DiscountDataModelFromJson(Map<String, dynamic> json) {
  return _$_DiscountDataModel(
    customerCode: json['customer_code'] as String?,
    customerName: json['customer_name'] as String?,
    customerTypeId: json['customer_type_id'] as String?,
    eventDiscount: json['event_discount'] as String?,
    eventBeginDate: json['event_begin_date'] as String?,
    eventEndDate: json['event_end_date'] as String?,
    discountDays: json['discount_days'] as String?,
    paymentTypeId: json['payment_type_id'] as String?,
  );
}

Map<String, dynamic> _$_$_DiscountDataModelToJson(
        _$_DiscountDataModel instance) =>
    <String, dynamic>{
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'customer_type_id': instance.customerTypeId,
      'event_discount': instance.eventDiscount,
      'event_begin_date': instance.eventBeginDate,
      'event_end_date': instance.eventEndDate,
      'discount_days': instance.discountDays,
      'payment_type_id': instance.paymentTypeId,
    };
