// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment_method_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethodDataModel _$PaymentMethodDataModelFromJson(
    Map<String, dynamic> json) {
  return _PaymentMethodDataModel.fromJson(json);
}

/// @nodoc
class _$PaymentMethodDataModelTearOff {
  const _$PaymentMethodDataModelTearOff();

  _PaymentMethodDataModel call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_voucher") String? isVoucher,
      @JsonKey(name: "is_multi") String? isMulti,
      @JsonKey(name: "is_coupon") String? isCoupon,
      @JsonKey(name: "is_pos") String? isPos}) {
    return _PaymentMethodDataModel(
      sId: sId,
      code: code,
      name: name,
      description: description,
      isVoucher: isVoucher,
      isMulti: isMulti,
      isCoupon: isCoupon,
      isPos: isPos,
    );
  }

  PaymentMethodDataModel fromJson(Map<String, Object> json) {
    return PaymentMethodDataModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentMethodDataModel = _$PaymentMethodDataModelTearOff();

/// @nodoc
mixin _$PaymentMethodDataModel {
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "is_voucher")
  String? get isVoucher => throw _privateConstructorUsedError;
  @JsonKey(name: "is_multi")
  String? get isMulti => throw _privateConstructorUsedError;
  @JsonKey(name: "is_coupon")
  String? get isCoupon => throw _privateConstructorUsedError;
  @JsonKey(name: "is_pos")
  String? get isPos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodDataModelCopyWith<PaymentMethodDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodDataModelCopyWith<$Res> {
  factory $PaymentMethodDataModelCopyWith(PaymentMethodDataModel value,
          $Res Function(PaymentMethodDataModel) then) =
      _$PaymentMethodDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_voucher") String? isVoucher,
      @JsonKey(name: "is_multi") String? isMulti,
      @JsonKey(name: "is_coupon") String? isCoupon,
      @JsonKey(name: "is_pos") String? isPos});
}

/// @nodoc
class _$PaymentMethodDataModelCopyWithImpl<$Res>
    implements $PaymentMethodDataModelCopyWith<$Res> {
  _$PaymentMethodDataModelCopyWithImpl(this._value, this._then);

  final PaymentMethodDataModel _value;
  // ignore: unused_field
  final $Res Function(PaymentMethodDataModel) _then;

  @override
  $Res call({
    Object? sId = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? isVoucher = freezed,
    Object? isMulti = freezed,
    Object? isCoupon = freezed,
    Object? isPos = freezed,
  }) {
    return _then(_value.copyWith(
      sId: sId == freezed
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isVoucher: isVoucher == freezed
          ? _value.isVoucher
          : isVoucher // ignore: cast_nullable_to_non_nullable
              as String?,
      isMulti: isMulti == freezed
          ? _value.isMulti
          : isMulti // ignore: cast_nullable_to_non_nullable
              as String?,
      isCoupon: isCoupon == freezed
          ? _value.isCoupon
          : isCoupon // ignore: cast_nullable_to_non_nullable
              as String?,
      isPos: isPos == freezed
          ? _value.isPos
          : isPos // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentMethodDataModelCopyWith<$Res>
    implements $PaymentMethodDataModelCopyWith<$Res> {
  factory _$PaymentMethodDataModelCopyWith(_PaymentMethodDataModel value,
          $Res Function(_PaymentMethodDataModel) then) =
      __$PaymentMethodDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_voucher") String? isVoucher,
      @JsonKey(name: "is_multi") String? isMulti,
      @JsonKey(name: "is_coupon") String? isCoupon,
      @JsonKey(name: "is_pos") String? isPos});
}

/// @nodoc
class __$PaymentMethodDataModelCopyWithImpl<$Res>
    extends _$PaymentMethodDataModelCopyWithImpl<$Res>
    implements _$PaymentMethodDataModelCopyWith<$Res> {
  __$PaymentMethodDataModelCopyWithImpl(_PaymentMethodDataModel _value,
      $Res Function(_PaymentMethodDataModel) _then)
      : super(_value, (v) => _then(v as _PaymentMethodDataModel));

  @override
  _PaymentMethodDataModel get _value => super._value as _PaymentMethodDataModel;

  @override
  $Res call({
    Object? sId = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? isVoucher = freezed,
    Object? isMulti = freezed,
    Object? isCoupon = freezed,
    Object? isPos = freezed,
  }) {
    return _then(_PaymentMethodDataModel(
      sId: sId == freezed
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isVoucher: isVoucher == freezed
          ? _value.isVoucher
          : isVoucher // ignore: cast_nullable_to_non_nullable
              as String?,
      isMulti: isMulti == freezed
          ? _value.isMulti
          : isMulti // ignore: cast_nullable_to_non_nullable
              as String?,
      isCoupon: isCoupon == freezed
          ? _value.isCoupon
          : isCoupon // ignore: cast_nullable_to_non_nullable
              as String?,
      isPos: isPos == freezed
          ? _value.isPos
          : isPos // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethodDataModel implements _PaymentMethodDataModel {
  _$_PaymentMethodDataModel(
      {@JsonKey(name: "_id") this.sId,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "is_voucher") this.isVoucher,
      @JsonKey(name: "is_multi") this.isMulti,
      @JsonKey(name: "is_coupon") this.isCoupon,
      @JsonKey(name: "is_pos") this.isPos});

  factory _$_PaymentMethodDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentMethodDataModelFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "is_voucher")
  final String? isVoucher;
  @override
  @JsonKey(name: "is_multi")
  final String? isMulti;
  @override
  @JsonKey(name: "is_coupon")
  final String? isCoupon;
  @override
  @JsonKey(name: "is_pos")
  final String? isPos;

  @override
  String toString() {
    return 'PaymentMethodDataModel(sId: $sId, code: $code, name: $name, description: $description, isVoucher: $isVoucher, isMulti: $isMulti, isCoupon: $isCoupon, isPos: $isPos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentMethodDataModel &&
            (identical(other.sId, sId) ||
                const DeepCollectionEquality().equals(other.sId, sId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isVoucher, isVoucher) ||
                const DeepCollectionEquality()
                    .equals(other.isVoucher, isVoucher)) &&
            (identical(other.isMulti, isMulti) ||
                const DeepCollectionEquality()
                    .equals(other.isMulti, isMulti)) &&
            (identical(other.isCoupon, isCoupon) ||
                const DeepCollectionEquality()
                    .equals(other.isCoupon, isCoupon)) &&
            (identical(other.isPos, isPos) ||
                const DeepCollectionEquality().equals(other.isPos, isPos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isVoucher) ^
      const DeepCollectionEquality().hash(isMulti) ^
      const DeepCollectionEquality().hash(isCoupon) ^
      const DeepCollectionEquality().hash(isPos);

  @JsonKey(ignore: true)
  @override
  _$PaymentMethodDataModelCopyWith<_PaymentMethodDataModel> get copyWith =>
      __$PaymentMethodDataModelCopyWithImpl<_PaymentMethodDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentMethodDataModelToJson(this);
  }
}

abstract class _PaymentMethodDataModel implements PaymentMethodDataModel {
  factory _PaymentMethodDataModel(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_voucher") String? isVoucher,
      @JsonKey(name: "is_multi") String? isMulti,
      @JsonKey(name: "is_coupon") String? isCoupon,
      @JsonKey(name: "is_pos") String? isPos}) = _$_PaymentMethodDataModel;

  factory _PaymentMethodDataModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodDataModel.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_voucher")
  String? get isVoucher => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_multi")
  String? get isMulti => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_coupon")
  String? get isCoupon => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_pos")
  String? get isPos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentMethodDataModelCopyWith<_PaymentMethodDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
