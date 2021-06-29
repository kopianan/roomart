// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_conf_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentConfDataModel _$_$_PaymentConfDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_PaymentConfDataModel(
    token: json['Token'] as String,
    invoiceNumber: json['InvoiceNumber'] as String,
    bankDestinationId: json['BankDestinationId'] as int,
    dateTimePayment: json['DateTimePayment'] as String,
    accountHolderNumber: json['AccountHolderNumber'] as String,
    accountHolderName: json['AccountHolderName'] as String,
  );
}

Map<String, dynamic> _$_$_PaymentConfDataModelToJson(
        _$_PaymentConfDataModel instance) =>
    <String, dynamic>{
      'Token': instance.token,
      'InvoiceNumber': instance.invoiceNumber,
      'BankDestinationId': instance.bankDestinationId,
      'DateTimePayment': instance.dateTimePayment,
      'AccountHolderNumber': instance.accountHolderNumber,
      'AccountHolderName': instance.accountHolderName,
    };
