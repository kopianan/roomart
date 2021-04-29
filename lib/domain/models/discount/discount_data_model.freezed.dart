// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'discount_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DiscountDataModel _$DiscountDataModelFromJson(Map<String, dynamic> json) {
  return _DiscountDataModel.fromJson(json);
}

/// @nodoc
class _$DiscountDataModelTearOff {
  const _$DiscountDataModelTearOff();

// ignore: unused_element
  _DiscountDataModel call(
      {@JsonKey(name: "customer_code") String customerCode,
      @JsonKey(name: "customer_name") String customerName,
      @JsonKey(name: "customer_type_id") String customerTypeId,
      @JsonKey(name: "event_discount") String eventDiscount,
      @JsonKey(name: "event_begin_date") String eventBeginDate,
      @JsonKey(name: "event_end_date") String eventEndDate,
      @JsonKey(name: "discount_days") String discountDays,
      @JsonKey(name: "payment_type_id") String paymentTypeId}) {
    return _DiscountDataModel(
      customerCode: customerCode,
      customerName: customerName,
      customerTypeId: customerTypeId,
      eventDiscount: eventDiscount,
      eventBeginDate: eventBeginDate,
      eventEndDate: eventEndDate,
      discountDays: discountDays,
      paymentTypeId: paymentTypeId,
    );
  }

// ignore: unused_element
  DiscountDataModel fromJson(Map<String, Object> json) {
    return DiscountDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DiscountDataModel = _$DiscountDataModelTearOff();

/// @nodoc
mixin _$DiscountDataModel {
  @JsonKey(name: "customer_code")
  String get customerCode;
  @JsonKey(name: "customer_name")
  String get customerName;
  @JsonKey(name: "customer_type_id")
  String get customerTypeId;
  @JsonKey(name: "event_discount")
  String get eventDiscount;
  @JsonKey(name: "event_begin_date")
  String get eventBeginDate;
  @JsonKey(name: "event_end_date")
  String get eventEndDate;
  @JsonKey(name: "discount_days")
  String get discountDays;
  @JsonKey(name: "payment_type_id")
  String get paymentTypeId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DiscountDataModelCopyWith<DiscountDataModel> get copyWith;
}

/// @nodoc
abstract class $DiscountDataModelCopyWith<$Res> {
  factory $DiscountDataModelCopyWith(
          DiscountDataModel value, $Res Function(DiscountDataModel) then) =
      _$DiscountDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "customer_code") String customerCode,
      @JsonKey(name: "customer_name") String customerName,
      @JsonKey(name: "customer_type_id") String customerTypeId,
      @JsonKey(name: "event_discount") String eventDiscount,
      @JsonKey(name: "event_begin_date") String eventBeginDate,
      @JsonKey(name: "event_end_date") String eventEndDate,
      @JsonKey(name: "discount_days") String discountDays,
      @JsonKey(name: "payment_type_id") String paymentTypeId});
}

/// @nodoc
class _$DiscountDataModelCopyWithImpl<$Res>
    implements $DiscountDataModelCopyWith<$Res> {
  _$DiscountDataModelCopyWithImpl(this._value, this._then);

  final DiscountDataModel _value;
  // ignore: unused_field
  final $Res Function(DiscountDataModel) _then;

  @override
  $Res call({
    Object customerCode = freezed,
    Object customerName = freezed,
    Object customerTypeId = freezed,
    Object eventDiscount = freezed,
    Object eventBeginDate = freezed,
    Object eventEndDate = freezed,
    Object discountDays = freezed,
    Object paymentTypeId = freezed,
  }) {
    return _then(_value.copyWith(
      customerCode: customerCode == freezed
          ? _value.customerCode
          : customerCode as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName as String,
      customerTypeId: customerTypeId == freezed
          ? _value.customerTypeId
          : customerTypeId as String,
      eventDiscount: eventDiscount == freezed
          ? _value.eventDiscount
          : eventDiscount as String,
      eventBeginDate: eventBeginDate == freezed
          ? _value.eventBeginDate
          : eventBeginDate as String,
      eventEndDate: eventEndDate == freezed
          ? _value.eventEndDate
          : eventEndDate as String,
      discountDays: discountDays == freezed
          ? _value.discountDays
          : discountDays as String,
      paymentTypeId: paymentTypeId == freezed
          ? _value.paymentTypeId
          : paymentTypeId as String,
    ));
  }
}

/// @nodoc
abstract class _$DiscountDataModelCopyWith<$Res>
    implements $DiscountDataModelCopyWith<$Res> {
  factory _$DiscountDataModelCopyWith(
          _DiscountDataModel value, $Res Function(_DiscountDataModel) then) =
      __$DiscountDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "customer_code") String customerCode,
      @JsonKey(name: "customer_name") String customerName,
      @JsonKey(name: "customer_type_id") String customerTypeId,
      @JsonKey(name: "event_discount") String eventDiscount,
      @JsonKey(name: "event_begin_date") String eventBeginDate,
      @JsonKey(name: "event_end_date") String eventEndDate,
      @JsonKey(name: "discount_days") String discountDays,
      @JsonKey(name: "payment_type_id") String paymentTypeId});
}

/// @nodoc
class __$DiscountDataModelCopyWithImpl<$Res>
    extends _$DiscountDataModelCopyWithImpl<$Res>
    implements _$DiscountDataModelCopyWith<$Res> {
  __$DiscountDataModelCopyWithImpl(
      _DiscountDataModel _value, $Res Function(_DiscountDataModel) _then)
      : super(_value, (v) => _then(v as _DiscountDataModel));

  @override
  _DiscountDataModel get _value => super._value as _DiscountDataModel;

  @override
  $Res call({
    Object customerCode = freezed,
    Object customerName = freezed,
    Object customerTypeId = freezed,
    Object eventDiscount = freezed,
    Object eventBeginDate = freezed,
    Object eventEndDate = freezed,
    Object discountDays = freezed,
    Object paymentTypeId = freezed,
  }) {
    return _then(_DiscountDataModel(
      customerCode: customerCode == freezed
          ? _value.customerCode
          : customerCode as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName as String,
      customerTypeId: customerTypeId == freezed
          ? _value.customerTypeId
          : customerTypeId as String,
      eventDiscount: eventDiscount == freezed
          ? _value.eventDiscount
          : eventDiscount as String,
      eventBeginDate: eventBeginDate == freezed
          ? _value.eventBeginDate
          : eventBeginDate as String,
      eventEndDate: eventEndDate == freezed
          ? _value.eventEndDate
          : eventEndDate as String,
      discountDays: discountDays == freezed
          ? _value.discountDays
          : discountDays as String,
      paymentTypeId: paymentTypeId == freezed
          ? _value.paymentTypeId
          : paymentTypeId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DiscountDataModel implements _DiscountDataModel {
  _$_DiscountDataModel(
      {@JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "customer_type_id") this.customerTypeId,
      @JsonKey(name: "event_discount") this.eventDiscount,
      @JsonKey(name: "event_begin_date") this.eventBeginDate,
      @JsonKey(name: "event_end_date") this.eventEndDate,
      @JsonKey(name: "discount_days") this.discountDays,
      @JsonKey(name: "payment_type_id") this.paymentTypeId});

  factory _$_DiscountDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DiscountDataModelFromJson(json);

  @override
  @JsonKey(name: "customer_code")
  final String customerCode;
  @override
  @JsonKey(name: "customer_name")
  final String customerName;
  @override
  @JsonKey(name: "customer_type_id")
  final String customerTypeId;
  @override
  @JsonKey(name: "event_discount")
  final String eventDiscount;
  @override
  @JsonKey(name: "event_begin_date")
  final String eventBeginDate;
  @override
  @JsonKey(name: "event_end_date")
  final String eventEndDate;
  @override
  @JsonKey(name: "discount_days")
  final String discountDays;
  @override
  @JsonKey(name: "payment_type_id")
  final String paymentTypeId;

  @override
  String toString() {
    return 'DiscountDataModel(customerCode: $customerCode, customerName: $customerName, customerTypeId: $customerTypeId, eventDiscount: $eventDiscount, eventBeginDate: $eventBeginDate, eventEndDate: $eventEndDate, discountDays: $discountDays, paymentTypeId: $paymentTypeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscountDataModel &&
            (identical(other.customerCode, customerCode) ||
                const DeepCollectionEquality()
                    .equals(other.customerCode, customerCode)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.customerTypeId, customerTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.customerTypeId, customerTypeId)) &&
            (identical(other.eventDiscount, eventDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.eventDiscount, eventDiscount)) &&
            (identical(other.eventBeginDate, eventBeginDate) ||
                const DeepCollectionEquality()
                    .equals(other.eventBeginDate, eventBeginDate)) &&
            (identical(other.eventEndDate, eventEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.eventEndDate, eventEndDate)) &&
            (identical(other.discountDays, discountDays) ||
                const DeepCollectionEquality()
                    .equals(other.discountDays, discountDays)) &&
            (identical(other.paymentTypeId, paymentTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentTypeId, paymentTypeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customerCode) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(customerTypeId) ^
      const DeepCollectionEquality().hash(eventDiscount) ^
      const DeepCollectionEquality().hash(eventBeginDate) ^
      const DeepCollectionEquality().hash(eventEndDate) ^
      const DeepCollectionEquality().hash(discountDays) ^
      const DeepCollectionEquality().hash(paymentTypeId);

  @JsonKey(ignore: true)
  @override
  _$DiscountDataModelCopyWith<_DiscountDataModel> get copyWith =>
      __$DiscountDataModelCopyWithImpl<_DiscountDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiscountDataModelToJson(this);
  }
}

abstract class _DiscountDataModel implements DiscountDataModel {
  factory _DiscountDataModel(
          {@JsonKey(name: "customer_code") String customerCode,
          @JsonKey(name: "customer_name") String customerName,
          @JsonKey(name: "customer_type_id") String customerTypeId,
          @JsonKey(name: "event_discount") String eventDiscount,
          @JsonKey(name: "event_begin_date") String eventBeginDate,
          @JsonKey(name: "event_end_date") String eventEndDate,
          @JsonKey(name: "discount_days") String discountDays,
          @JsonKey(name: "payment_type_id") String paymentTypeId}) =
      _$_DiscountDataModel;

  factory _DiscountDataModel.fromJson(Map<String, dynamic> json) =
      _$_DiscountDataModel.fromJson;

  @override
  @JsonKey(name: "customer_code")
  String get customerCode;
  @override
  @JsonKey(name: "customer_name")
  String get customerName;
  @override
  @JsonKey(name: "customer_type_id")
  String get customerTypeId;
  @override
  @JsonKey(name: "event_discount")
  String get eventDiscount;
  @override
  @JsonKey(name: "event_begin_date")
  String get eventBeginDate;
  @override
  @JsonKey(name: "event_end_date")
  String get eventEndDate;
  @override
  @JsonKey(name: "discount_days")
  String get discountDays;
  @override
  @JsonKey(name: "payment_type_id")
  String get paymentTypeId;
  @override
  @JsonKey(ignore: true)
  _$DiscountDataModelCopyWith<_DiscountDataModel> get copyWith;
}
