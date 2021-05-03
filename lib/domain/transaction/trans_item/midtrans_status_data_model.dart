import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_status_data_model.freezed.dart';
part 'midtrans_status_data_model.g.dart';

@freezed
abstract class MidtransStatusDataModel with _$MidtransStatusDataModel {
  factory MidtransStatusDataModel({
    @JsonKey(name: 'transaction_time') String transactionTime,
    @JsonKey(name: 'gross_amount') String grossAmount,
    @JsonKey(name: 'currency') String currency,
    @JsonKey(name: 'order_id') String orderId,
    @JsonKey(name: 'payment_type') String paymentType,
    @JsonKey(name: 'signature_key') String signatureKey,
    @JsonKey(name: 'status_code') String statusCode,
    @JsonKey(name: 'transaction_id') String transactionId,
    @JsonKey(name: 'transaction_status') String transactionStatus,
    @JsonKey(name: 'fraud_status') String fraudStatus,
    @JsonKey(name: 'status_message') String statusMessage,
    @JsonKey(name: 'merchant_id') String merchantId,
  }) = _MidtransStatusDataModel;

  factory MidtransStatusDataModel.fromJson(Map<String, dynamic> json) =>
      _$MidtransStatusDataModelFromJson(json);
}
