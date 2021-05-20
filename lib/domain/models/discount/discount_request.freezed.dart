// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'discount_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DiscountRequest _$DiscountRequestFromJson(Map<String, dynamic> json) {
  return _DiscountRequest.fromJson(json);
}

/// @nodoc
class _$DiscountRequestTearOff {
  const _$DiscountRequestTearOff();

// ignore: unused_element
  _DiscountRequest call(
      {String token,
      @JsonKey(name: "Code") String code,
      @JsonKey(name: "ShoppingTotal") String total}) {
    return _DiscountRequest(
      token: token,
      code: code,
      total: total,
    );
  }

// ignore: unused_element
  DiscountRequest fromJson(Map<String, Object> json) {
    return DiscountRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DiscountRequest = _$DiscountRequestTearOff();

/// @nodoc
mixin _$DiscountRequest {
  String get token;
  @JsonKey(name: "Code")
  String get code;
  @JsonKey(name: "ShoppingTotal")
  String get total;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DiscountRequestCopyWith<DiscountRequest> get copyWith;
}

/// @nodoc
abstract class $DiscountRequestCopyWith<$Res> {
  factory $DiscountRequestCopyWith(
          DiscountRequest value, $Res Function(DiscountRequest) then) =
      _$DiscountRequestCopyWithImpl<$Res>;
  $Res call(
      {String token,
      @JsonKey(name: "Code") String code,
      @JsonKey(name: "ShoppingTotal") String total});
}

/// @nodoc
class _$DiscountRequestCopyWithImpl<$Res>
    implements $DiscountRequestCopyWith<$Res> {
  _$DiscountRequestCopyWithImpl(this._value, this._then);

  final DiscountRequest _value;
  // ignore: unused_field
  final $Res Function(DiscountRequest) _then;

  @override
  $Res call({
    Object token = freezed,
    Object code = freezed,
    Object total = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
      code: code == freezed ? _value.code : code as String,
      total: total == freezed ? _value.total : total as String,
    ));
  }
}

/// @nodoc
abstract class _$DiscountRequestCopyWith<$Res>
    implements $DiscountRequestCopyWith<$Res> {
  factory _$DiscountRequestCopyWith(
          _DiscountRequest value, $Res Function(_DiscountRequest) then) =
      __$DiscountRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      @JsonKey(name: "Code") String code,
      @JsonKey(name: "ShoppingTotal") String total});
}

/// @nodoc
class __$DiscountRequestCopyWithImpl<$Res>
    extends _$DiscountRequestCopyWithImpl<$Res>
    implements _$DiscountRequestCopyWith<$Res> {
  __$DiscountRequestCopyWithImpl(
      _DiscountRequest _value, $Res Function(_DiscountRequest) _then)
      : super(_value, (v) => _then(v as _DiscountRequest));

  @override
  _DiscountRequest get _value => super._value as _DiscountRequest;

  @override
  $Res call({
    Object token = freezed,
    Object code = freezed,
    Object total = freezed,
  }) {
    return _then(_DiscountRequest(
      token: token == freezed ? _value.token : token as String,
      code: code == freezed ? _value.code : code as String,
      total: total == freezed ? _value.total : total as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DiscountRequest implements _DiscountRequest {
  _$_DiscountRequest(
      {this.token,
      @JsonKey(name: "Code") this.code,
      @JsonKey(name: "ShoppingTotal") this.total});

  factory _$_DiscountRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_DiscountRequestFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: "Code")
  final String code;
  @override
  @JsonKey(name: "ShoppingTotal")
  final String total;

  @override
  String toString() {
    return 'DiscountRequest(token: $token, code: $code, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscountRequest &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$DiscountRequestCopyWith<_DiscountRequest> get copyWith =>
      __$DiscountRequestCopyWithImpl<_DiscountRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiscountRequestToJson(this);
  }
}

abstract class _DiscountRequest implements DiscountRequest {
  factory _DiscountRequest(
      {String token,
      @JsonKey(name: "Code") String code,
      @JsonKey(name: "ShoppingTotal") String total}) = _$_DiscountRequest;

  factory _DiscountRequest.fromJson(Map<String, dynamic> json) =
      _$_DiscountRequest.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: "Code")
  String get code;
  @override
  @JsonKey(name: "ShoppingTotal")
  String get total;
  @override
  @JsonKey(ignore: true)
  _$DiscountRequestCopyWith<_DiscountRequest> get copyWith;
}
