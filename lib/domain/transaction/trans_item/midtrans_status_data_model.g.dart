// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midtrans_status_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MidtransStatusDataModel _$_$_MidtransStatusDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_MidtransStatusDataModel(
    transactionTime: json['transaction_time'] as String,
    grossAmount: json['gross_amount'] as String,
    currency: json['currency'] as String,
    orderId: json['order_id'] as String,
    paymentType: json['payment_type'] as String,
    signatureKey: json['signature_key'] as String,
    statusCode: json['status_code'] as String,
    transactionId: json['transaction_id'] as String,
    transactionStatus: json['transaction_status'] as String,
    fraudStatus: json['fraud_status'] as String,
    statusMessage: json['status_message'] as String,
    merchantId: json['merchant_id'] as String,
  );
}

Map<String, dynamic> _$_$_MidtransStatusDataModelToJson(
        _$_MidtransStatusDataModel instance) =>
    <String, dynamic>{
      'transaction_time': instance.transactionTime,
      'gross_amount': instance.grossAmount,
      'currency': instance.currency,
      'order_id': instance.orderId,
      'payment_type': instance.paymentType,
      'signature_key': instance.signatureKey,
      'status_code': instance.statusCode,
      'transaction_id': instance.transactionId,
      'transaction_status': instance.transactionStatus,
      'fraud_status': instance.fraudStatus,
      'status_message': instance.statusMessage,
      'merchant_id': instance.merchantId,
    };
