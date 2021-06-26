// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trans_post_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransPostDataModel _$_$_TransPostDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_TransPostDataModel(
    transNo: json['trans_no'] as String?,
    transType: json['trans_type'] as String?,
    location: json['location'] as String?,
    transDt: json['trans_dt'] as String?,
    customer: json['customer'] as String?,
    createBy: json['create_by'] as String?,
    remark: json['remark'] as String?,
    pmttype: json['pmttype'] as String?,
    paymentchannel: json['paymentchannel'] as String?,
    pmtterm: json['total_discount'] as String?,
    bankId: json['pmtterm'] as int?,
    totalDiscount: json['bankId'] as String?,
    parentId: json['parent_id'] as String?,
    isReseller: json['is_reseller'] as bool?,
    email: json['email'] as String?,
    fullname: json['fullname'] as String?,
    details: (json['details'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : BoughtItemDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TransPostDataModelToJson(
        _$_TransPostDataModel instance) =>
    <String, dynamic>{
      'trans_no': instance.transNo,
      'trans_type': instance.transType,
      'location': instance.location,
      'trans_dt': instance.transDt,
      'customer': instance.customer,
      'create_by': instance.createBy,
      'remark': instance.remark,
      'pmttype': instance.pmttype,
      'paymentchannel': instance.paymentchannel,
      'total_discount': instance.pmtterm,
      'pmtterm': instance.bankId,
      'bankId': instance.totalDiscount,
      'parent_id': instance.parentId,
      'is_reseller': instance.isReseller,
      'email': instance.email,
      'fullname': instance.fullname,
      'details': instance.details,
    };
