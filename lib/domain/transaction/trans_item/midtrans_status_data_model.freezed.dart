// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'midtrans_status_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MidtransStatusDataModel _$MidtransStatusDataModelFromJson(
    Map<String, dynamic> json) {
  return _MidtransStatusDataModel.fromJson(json);
}

/// @nodoc
class _$MidtransStatusDataModelTearOff {
  const _$MidtransStatusDataModelTearOff();

// ignore: unused_element
  _MidtransStatusDataModel call(
      {@JsonKey(name: 'transaction_time') String transactionTime,
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
      @JsonKey(name: 'merchant_id') String merchantId}) {
    return _MidtransStatusDataModel(
      transactionTime: transactionTime,
      grossAmount: grossAmount,
      currency: currency,
      orderId: orderId,
      paymentType: paymentType,
      signatureKey: signatureKey,
      statusCode: statusCode,
      transactionId: transactionId,
      transactionStatus: transactionStatus,
      fraudStatus: fraudStatus,
      statusMessage: statusMessage,
      merchantId: merchantId,
    );
  }

// ignore: unused_element
  MidtransStatusDataModel fromJson(Map<String, Object> json) {
    return MidtransStatusDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MidtransStatusDataModel = _$MidtransStatusDataModelTearOff();

/// @nodoc
mixin _$MidtransStatusDataModel {
  @JsonKey(name: 'transaction_time')
  String get transactionTime;
  @JsonKey(name: 'gross_amount')
  String get grossAmount;
  @JsonKey(name: 'currency')
  String get currency;
  @JsonKey(name: 'order_id')
  String get orderId;
  @JsonKey(name: 'payment_type')
  String get paymentType;
  @JsonKey(name: 'signature_key')
  String get signatureKey;
  @JsonKey(name: 'status_code')
  String get statusCode;
  @JsonKey(name: 'transaction_id')
  String get transactionId;
  @JsonKey(name: 'transaction_status')
  String get transactionStatus;
  @JsonKey(name: 'fraud_status')
  String get fraudStatus;
  @JsonKey(name: 'status_message')
  String get statusMessage;
  @JsonKey(name: 'merchant_id')
  String get merchantId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MidtransStatusDataModelCopyWith<MidtransStatusDataModel> get copyWith;
}

/// @nodoc
abstract class $MidtransStatusDataModelCopyWith<$Res> {
  factory $MidtransStatusDataModelCopyWith(MidtransStatusDataModel value,
          $Res Function(MidtransStatusDataModel) then) =
      _$MidtransStatusDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'transaction_time') String transactionTime,
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
      @JsonKey(name: 'merchant_id') String merchantId});
}

/// @nodoc
class _$MidtransStatusDataModelCopyWithImpl<$Res>
    implements $MidtransStatusDataModelCopyWith<$Res> {
  _$MidtransStatusDataModelCopyWithImpl(this._value, this._then);

  final MidtransStatusDataModel _value;
  // ignore: unused_field
  final $Res Function(MidtransStatusDataModel) _then;

  @override
  $Res call({
    Object transactionTime = freezed,
    Object grossAmount = freezed,
    Object currency = freezed,
    Object orderId = freezed,
    Object paymentType = freezed,
    Object signatureKey = freezed,
    Object statusCode = freezed,
    Object transactionId = freezed,
    Object transactionStatus = freezed,
    Object fraudStatus = freezed,
    Object statusMessage = freezed,
    Object merchantId = freezed,
  }) {
    return _then(_value.copyWith(
      transactionTime: transactionTime == freezed
          ? _value.transactionTime
          : transactionTime as String,
      grossAmount:
          grossAmount == freezed ? _value.grossAmount : grossAmount as String,
      currency: currency == freezed ? _value.currency : currency as String,
      orderId: orderId == freezed ? _value.orderId : orderId as String,
      paymentType:
          paymentType == freezed ? _value.paymentType : paymentType as String,
      signatureKey: signatureKey == freezed
          ? _value.signatureKey
          : signatureKey as String,
      statusCode:
          statusCode == freezed ? _value.statusCode : statusCode as String,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId as String,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus as String,
      fraudStatus:
          fraudStatus == freezed ? _value.fraudStatus : fraudStatus as String,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage as String,
      merchantId:
          merchantId == freezed ? _value.merchantId : merchantId as String,
    ));
  }
}

/// @nodoc
abstract class _$MidtransStatusDataModelCopyWith<$Res>
    implements $MidtransStatusDataModelCopyWith<$Res> {
  factory _$MidtransStatusDataModelCopyWith(_MidtransStatusDataModel value,
          $Res Function(_MidtransStatusDataModel) then) =
      __$MidtransStatusDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'transaction_time') String transactionTime,
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
      @JsonKey(name: 'merchant_id') String merchantId});
}

/// @nodoc
class __$MidtransStatusDataModelCopyWithImpl<$Res>
    extends _$MidtransStatusDataModelCopyWithImpl<$Res>
    implements _$MidtransStatusDataModelCopyWith<$Res> {
  __$MidtransStatusDataModelCopyWithImpl(_MidtransStatusDataModel _value,
      $Res Function(_MidtransStatusDataModel) _then)
      : super(_value, (v) => _then(v as _MidtransStatusDataModel));

  @override
  _MidtransStatusDataModel get _value =>
      super._value as _MidtransStatusDataModel;

  @override
  $Res call({
    Object transactionTime = freezed,
    Object grossAmount = freezed,
    Object currency = freezed,
    Object orderId = freezed,
    Object paymentType = freezed,
    Object signatureKey = freezed,
    Object statusCode = freezed,
    Object transactionId = freezed,
    Object transactionStatus = freezed,
    Object fraudStatus = freezed,
    Object statusMessage = freezed,
    Object merchantId = freezed,
  }) {
    return _then(_MidtransStatusDataModel(
      transactionTime: transactionTime == freezed
          ? _value.transactionTime
          : transactionTime as String,
      grossAmount:
          grossAmount == freezed ? _value.grossAmount : grossAmount as String,
      currency: currency == freezed ? _value.currency : currency as String,
      orderId: orderId == freezed ? _value.orderId : orderId as String,
      paymentType:
          paymentType == freezed ? _value.paymentType : paymentType as String,
      signatureKey: signatureKey == freezed
          ? _value.signatureKey
          : signatureKey as String,
      statusCode:
          statusCode == freezed ? _value.statusCode : statusCode as String,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId as String,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus as String,
      fraudStatus:
          fraudStatus == freezed ? _value.fraudStatus : fraudStatus as String,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage as String,
      merchantId:
          merchantId == freezed ? _value.merchantId : merchantId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MidtransStatusDataModel implements _MidtransStatusDataModel {
  _$_MidtransStatusDataModel(
      {@JsonKey(name: 'transaction_time') this.transactionTime,
      @JsonKey(name: 'gross_amount') this.grossAmount,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'payment_type') this.paymentType,
      @JsonKey(name: 'signature_key') this.signatureKey,
      @JsonKey(name: 'status_code') this.statusCode,
      @JsonKey(name: 'transaction_id') this.transactionId,
      @JsonKey(name: 'transaction_status') this.transactionStatus,
      @JsonKey(name: 'fraud_status') this.fraudStatus,
      @JsonKey(name: 'status_message') this.statusMessage,
      @JsonKey(name: 'merchant_id') this.merchantId});

  factory _$_MidtransStatusDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MidtransStatusDataModelFromJson(json);

  @override
  @JsonKey(name: 'transaction_time')
  final String transactionTime;
  @override
  @JsonKey(name: 'gross_amount')
  final String grossAmount;
  @override
  @JsonKey(name: 'currency')
  final String currency;
  @override
  @JsonKey(name: 'order_id')
  final String orderId;
  @override
  @JsonKey(name: 'payment_type')
  final String paymentType;
  @override
  @JsonKey(name: 'signature_key')
  final String signatureKey;
  @override
  @JsonKey(name: 'status_code')
  final String statusCode;
  @override
  @JsonKey(name: 'transaction_id')
  final String transactionId;
  @override
  @JsonKey(name: 'transaction_status')
  final String transactionStatus;
  @override
  @JsonKey(name: 'fraud_status')
  final String fraudStatus;
  @override
  @JsonKey(name: 'status_message')
  final String statusMessage;
  @override
  @JsonKey(name: 'merchant_id')
  final String merchantId;

  @override
  String toString() {
    return 'MidtransStatusDataModel(transactionTime: $transactionTime, grossAmount: $grossAmount, currency: $currency, orderId: $orderId, paymentType: $paymentType, signatureKey: $signatureKey, statusCode: $statusCode, transactionId: $transactionId, transactionStatus: $transactionStatus, fraudStatus: $fraudStatus, statusMessage: $statusMessage, merchantId: $merchantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MidtransStatusDataModel &&
            (identical(other.transactionTime, transactionTime) ||
                const DeepCollectionEquality()
                    .equals(other.transactionTime, transactionTime)) &&
            (identical(other.grossAmount, grossAmount) ||
                const DeepCollectionEquality()
                    .equals(other.grossAmount, grossAmount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.signatureKey, signatureKey) ||
                const DeepCollectionEquality()
                    .equals(other.signatureKey, signatureKey)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.transactionStatus, transactionStatus) ||
                const DeepCollectionEquality()
                    .equals(other.transactionStatus, transactionStatus)) &&
            (identical(other.fraudStatus, fraudStatus) ||
                const DeepCollectionEquality()
                    .equals(other.fraudStatus, fraudStatus)) &&
            (identical(other.statusMessage, statusMessage) ||
                const DeepCollectionEquality()
                    .equals(other.statusMessage, statusMessage)) &&
            (identical(other.merchantId, merchantId) ||
                const DeepCollectionEquality()
                    .equals(other.merchantId, merchantId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionTime) ^
      const DeepCollectionEquality().hash(grossAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(signatureKey) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(transactionStatus) ^
      const DeepCollectionEquality().hash(fraudStatus) ^
      const DeepCollectionEquality().hash(statusMessage) ^
      const DeepCollectionEquality().hash(merchantId);

  @JsonKey(ignore: true)
  @override
  _$MidtransStatusDataModelCopyWith<_MidtransStatusDataModel> get copyWith =>
      __$MidtransStatusDataModelCopyWithImpl<_MidtransStatusDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MidtransStatusDataModelToJson(this);
  }
}

abstract class _MidtransStatusDataModel implements MidtransStatusDataModel {
  factory _MidtransStatusDataModel(
          {@JsonKey(name: 'transaction_time') String transactionTime,
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
          @JsonKey(name: 'merchant_id') String merchantId}) =
      _$_MidtransStatusDataModel;

  factory _MidtransStatusDataModel.fromJson(Map<String, dynamic> json) =
      _$_MidtransStatusDataModel.fromJson;

  @override
  @JsonKey(name: 'transaction_time')
  String get transactionTime;
  @override
  @JsonKey(name: 'gross_amount')
  String get grossAmount;
  @override
  @JsonKey(name: 'currency')
  String get currency;
  @override
  @JsonKey(name: 'order_id')
  String get orderId;
  @override
  @JsonKey(name: 'payment_type')
  String get paymentType;
  @override
  @JsonKey(name: 'signature_key')
  String get signatureKey;
  @override
  @JsonKey(name: 'status_code')
  String get statusCode;
  @override
  @JsonKey(name: 'transaction_id')
  String get transactionId;
  @override
  @JsonKey(name: 'transaction_status')
  String get transactionStatus;
  @override
  @JsonKey(name: 'fraud_status')
  String get fraudStatus;
  @override
  @JsonKey(name: 'status_message')
  String get statusMessage;
  @override
  @JsonKey(name: 'merchant_id')
  String get merchantId;
  @override
  @JsonKey(ignore: true)
  _$MidtransStatusDataModelCopyWith<_MidtransStatusDataModel> get copyWith;
}
