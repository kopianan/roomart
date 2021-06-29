// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment_conf_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentConfDataModel _$PaymentConfDataModelFromJson(Map<String, dynamic> json) {
  return _PaymentConfDataModel.fromJson(json);
}

/// @nodoc
class _$PaymentConfDataModelTearOff {
  const _$PaymentConfDataModelTearOff();

  _PaymentConfDataModel call(
      {@JsonKey(name: 'Token') String token = "",
      @JsonKey(name: 'InvoiceNumber') String invoiceNumber = "",
      @JsonKey(name: 'BankDestinationId') int bankDestinationId = 0,
      @JsonKey(name: 'DateTimePayment') String dateTimePayment = "",
      @JsonKey(name: 'AccountHolderNumber') String accountHolderNumber = "",
      @JsonKey(name: 'AccountHolderName') String accountHolderName = ""}) {
    return _PaymentConfDataModel(
      token: token,
      invoiceNumber: invoiceNumber,
      bankDestinationId: bankDestinationId,
      dateTimePayment: dateTimePayment,
      accountHolderNumber: accountHolderNumber,
      accountHolderName: accountHolderName,
    );
  }

  PaymentConfDataModel fromJson(Map<String, Object> json) {
    return PaymentConfDataModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentConfDataModel = _$PaymentConfDataModelTearOff();

/// @nodoc
mixin _$PaymentConfDataModel {
  @JsonKey(name: 'Token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'InvoiceNumber')
  String get invoiceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'BankDestinationId')
  int get bankDestinationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DateTimePayment')
  String get dateTimePayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountHolderNumber')
  String get accountHolderNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountHolderName')
  String get accountHolderName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentConfDataModelCopyWith<PaymentConfDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentConfDataModelCopyWith<$Res> {
  factory $PaymentConfDataModelCopyWith(PaymentConfDataModel value,
          $Res Function(PaymentConfDataModel) then) =
      _$PaymentConfDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Token') String token,
      @JsonKey(name: 'InvoiceNumber') String invoiceNumber,
      @JsonKey(name: 'BankDestinationId') int bankDestinationId,
      @JsonKey(name: 'DateTimePayment') String dateTimePayment,
      @JsonKey(name: 'AccountHolderNumber') String accountHolderNumber,
      @JsonKey(name: 'AccountHolderName') String accountHolderName});
}

/// @nodoc
class _$PaymentConfDataModelCopyWithImpl<$Res>
    implements $PaymentConfDataModelCopyWith<$Res> {
  _$PaymentConfDataModelCopyWithImpl(this._value, this._then);

  final PaymentConfDataModel _value;
  // ignore: unused_field
  final $Res Function(PaymentConfDataModel) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? invoiceNumber = freezed,
    Object? bankDestinationId = freezed,
    Object? dateTimePayment = freezed,
    Object? accountHolderNumber = freezed,
    Object? accountHolderName = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNumber: invoiceNumber == freezed
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bankDestinationId: bankDestinationId == freezed
          ? _value.bankDestinationId
          : bankDestinationId // ignore: cast_nullable_to_non_nullable
              as int,
      dateTimePayment: dateTimePayment == freezed
          ? _value.dateTimePayment
          : dateTimePayment // ignore: cast_nullable_to_non_nullable
              as String,
      accountHolderNumber: accountHolderNumber == freezed
          ? _value.accountHolderNumber
          : accountHolderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountHolderName: accountHolderName == freezed
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentConfDataModelCopyWith<$Res>
    implements $PaymentConfDataModelCopyWith<$Res> {
  factory _$PaymentConfDataModelCopyWith(_PaymentConfDataModel value,
          $Res Function(_PaymentConfDataModel) then) =
      __$PaymentConfDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Token') String token,
      @JsonKey(name: 'InvoiceNumber') String invoiceNumber,
      @JsonKey(name: 'BankDestinationId') int bankDestinationId,
      @JsonKey(name: 'DateTimePayment') String dateTimePayment,
      @JsonKey(name: 'AccountHolderNumber') String accountHolderNumber,
      @JsonKey(name: 'AccountHolderName') String accountHolderName});
}

/// @nodoc
class __$PaymentConfDataModelCopyWithImpl<$Res>
    extends _$PaymentConfDataModelCopyWithImpl<$Res>
    implements _$PaymentConfDataModelCopyWith<$Res> {
  __$PaymentConfDataModelCopyWithImpl(
      _PaymentConfDataModel _value, $Res Function(_PaymentConfDataModel) _then)
      : super(_value, (v) => _then(v as _PaymentConfDataModel));

  @override
  _PaymentConfDataModel get _value => super._value as _PaymentConfDataModel;

  @override
  $Res call({
    Object? token = freezed,
    Object? invoiceNumber = freezed,
    Object? bankDestinationId = freezed,
    Object? dateTimePayment = freezed,
    Object? accountHolderNumber = freezed,
    Object? accountHolderName = freezed,
  }) {
    return _then(_PaymentConfDataModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNumber: invoiceNumber == freezed
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bankDestinationId: bankDestinationId == freezed
          ? _value.bankDestinationId
          : bankDestinationId // ignore: cast_nullable_to_non_nullable
              as int,
      dateTimePayment: dateTimePayment == freezed
          ? _value.dateTimePayment
          : dateTimePayment // ignore: cast_nullable_to_non_nullable
              as String,
      accountHolderNumber: accountHolderNumber == freezed
          ? _value.accountHolderNumber
          : accountHolderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountHolderName: accountHolderName == freezed
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentConfDataModel implements _PaymentConfDataModel {
  _$_PaymentConfDataModel(
      {@JsonKey(name: 'Token') this.token = "",
      @JsonKey(name: 'InvoiceNumber') this.invoiceNumber = "",
      @JsonKey(name: 'BankDestinationId') this.bankDestinationId = 0,
      @JsonKey(name: 'DateTimePayment') this.dateTimePayment = "",
      @JsonKey(name: 'AccountHolderNumber') this.accountHolderNumber = "",
      @JsonKey(name: 'AccountHolderName') this.accountHolderName = ""});

  factory _$_PaymentConfDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentConfDataModelFromJson(json);

  @override
  @JsonKey(name: 'Token')
  final String token;
  @override
  @JsonKey(name: 'InvoiceNumber')
  final String invoiceNumber;
  @override
  @JsonKey(name: 'BankDestinationId')
  final int bankDestinationId;
  @override
  @JsonKey(name: 'DateTimePayment')
  final String dateTimePayment;
  @override
  @JsonKey(name: 'AccountHolderNumber')
  final String accountHolderNumber;
  @override
  @JsonKey(name: 'AccountHolderName')
  final String accountHolderName;

  @override
  String toString() {
    return 'PaymentConfDataModel(token: $token, invoiceNumber: $invoiceNumber, bankDestinationId: $bankDestinationId, dateTimePayment: $dateTimePayment, accountHolderNumber: $accountHolderNumber, accountHolderName: $accountHolderName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentConfDataModel &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceNumber, invoiceNumber)) &&
            (identical(other.bankDestinationId, bankDestinationId) ||
                const DeepCollectionEquality()
                    .equals(other.bankDestinationId, bankDestinationId)) &&
            (identical(other.dateTimePayment, dateTimePayment) ||
                const DeepCollectionEquality()
                    .equals(other.dateTimePayment, dateTimePayment)) &&
            (identical(other.accountHolderNumber, accountHolderNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accountHolderNumber, accountHolderNumber)) &&
            (identical(other.accountHolderName, accountHolderName) ||
                const DeepCollectionEquality()
                    .equals(other.accountHolderName, accountHolderName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(invoiceNumber) ^
      const DeepCollectionEquality().hash(bankDestinationId) ^
      const DeepCollectionEquality().hash(dateTimePayment) ^
      const DeepCollectionEquality().hash(accountHolderNumber) ^
      const DeepCollectionEquality().hash(accountHolderName);

  @JsonKey(ignore: true)
  @override
  _$PaymentConfDataModelCopyWith<_PaymentConfDataModel> get copyWith =>
      __$PaymentConfDataModelCopyWithImpl<_PaymentConfDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentConfDataModelToJson(this);
  }
}

abstract class _PaymentConfDataModel implements PaymentConfDataModel {
  factory _PaymentConfDataModel(
          {@JsonKey(name: 'Token') String token,
          @JsonKey(name: 'InvoiceNumber') String invoiceNumber,
          @JsonKey(name: 'BankDestinationId') int bankDestinationId,
          @JsonKey(name: 'DateTimePayment') String dateTimePayment,
          @JsonKey(name: 'AccountHolderNumber') String accountHolderNumber,
          @JsonKey(name: 'AccountHolderName') String accountHolderName}) =
      _$_PaymentConfDataModel;

  factory _PaymentConfDataModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentConfDataModel.fromJson;

  @override
  @JsonKey(name: 'Token')
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'InvoiceNumber')
  String get invoiceNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'BankDestinationId')
  int get bankDestinationId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'DateTimePayment')
  String get dateTimePayment => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'AccountHolderNumber')
  String get accountHolderNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'AccountHolderName')
  String get accountHolderName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentConfDataModelCopyWith<_PaymentConfDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
