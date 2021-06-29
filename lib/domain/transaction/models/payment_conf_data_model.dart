import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_conf_data_model.freezed.dart';
part 'payment_conf_data_model.g.dart';

@freezed
class PaymentConfDataModel with _$PaymentConfDataModel {
  factory PaymentConfDataModel({
    @Default("") @JsonKey(name: 'Token') String token,
    @Default("") @JsonKey(name: 'InvoiceNumber') String invoiceNumber,
    @Default(0) @JsonKey(name: 'BankDestinationId') int bankDestinationId,
    @Default("") @JsonKey(name: 'DateTimePayment') String dateTimePayment,
    @Default("")
    @JsonKey(name: 'AccountHolderNumber')
        String accountHolderNumber,
    @Default("") @JsonKey(name: 'AccountHolderName') String accountHolderName,
  }) = _PaymentConfDataModel;

  factory PaymentConfDataModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentConfDataModelFromJson(json);
}
