// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankDataModel _$_$_BankDataModelFromJson(Map<String, dynamic> json) {
  return _$_BankDataModel(
    bankId: json['BankID'] as int,
    bankName: json['BankName'] as String,
    accountNo: json['AccountNo'] as String,
    accountName: json['AccountName'] as String,
    image: json['Image'] as int,
    status: json['Status'] as bool,
    modifiedBy: json['ModifiedBy'] as int,
    modifiedDate: json['ModifiedDate'] as String,
  );
}

Map<String, dynamic> _$_$_BankDataModelToJson(_$_BankDataModel instance) =>
    <String, dynamic>{
      'BankID': instance.bankId,
      'BankName': instance.bankName,
      'AccountNo': instance.accountNo,
      'AccountName': instance.accountName,
      'Image': instance.image,
      'Status': instance.status,
      'ModifiedBy': instance.modifiedBy,
      'ModifiedDate': instance.modifiedDate,
    };
