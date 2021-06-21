// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trans_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransRequest _$TransRequestFromJson(Map<String, dynamic> json) {
  return _TransRequest.fromJson(json);
}

/// @nodoc
class _$TransRequestTearOff {
  const _$TransRequestTearOff();

// ignore: unused_element
  _TransRequest call(
      {@required String token,
      @JsonKey(name: 'sales_trans') List<TransPostDataModel> salesTrans}) {
    return _TransRequest(
      token: token,
      salesTrans: salesTrans,
    );
  }

// ignore: unused_element
  TransRequest fromJson(Map<String, Object> json) {
    return TransRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TransRequest = _$TransRequestTearOff();

/// @nodoc
mixin _$TransRequest {
  String get token;
  @JsonKey(name: 'sales_trans')
  List<TransPostDataModel> get salesTrans;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TransRequestCopyWith<TransRequest> get copyWith;
}

/// @nodoc
abstract class $TransRequestCopyWith<$Res> {
  factory $TransRequestCopyWith(
          TransRequest value, $Res Function(TransRequest) then) =
      _$TransRequestCopyWithImpl<$Res>;
  $Res call(
      {String token,
      @JsonKey(name: 'sales_trans') List<TransPostDataModel> salesTrans});
}

/// @nodoc
class _$TransRequestCopyWithImpl<$Res> implements $TransRequestCopyWith<$Res> {
  _$TransRequestCopyWithImpl(this._value, this._then);

  final TransRequest _value;
  // ignore: unused_field
  final $Res Function(TransRequest) _then;

  @override
  $Res call({
    Object token = freezed,
    Object salesTrans = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
      salesTrans: salesTrans == freezed
          ? _value.salesTrans
          : salesTrans as List<TransPostDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$TransRequestCopyWith<$Res>
    implements $TransRequestCopyWith<$Res> {
  factory _$TransRequestCopyWith(
          _TransRequest value, $Res Function(_TransRequest) then) =
      __$TransRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      @JsonKey(name: 'sales_trans') List<TransPostDataModel> salesTrans});
}

/// @nodoc
class __$TransRequestCopyWithImpl<$Res> extends _$TransRequestCopyWithImpl<$Res>
    implements _$TransRequestCopyWith<$Res> {
  __$TransRequestCopyWithImpl(
      _TransRequest _value, $Res Function(_TransRequest) _then)
      : super(_value, (v) => _then(v as _TransRequest));

  @override
  _TransRequest get _value => super._value as _TransRequest;

  @override
  $Res call({
    Object token = freezed,
    Object salesTrans = freezed,
  }) {
    return _then(_TransRequest(
      token: token == freezed ? _value.token : token as String,
      salesTrans: salesTrans == freezed
          ? _value.salesTrans
          : salesTrans as List<TransPostDataModel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TransRequest implements _TransRequest {
  _$_TransRequest(
      {@required this.token, @JsonKey(name: 'sales_trans') this.salesTrans})
      : assert(token != null);

  factory _$_TransRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_TransRequestFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'sales_trans')
  final List<TransPostDataModel> salesTrans;

  @override
  String toString() {
    return 'TransRequest(token: $token, salesTrans: $salesTrans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransRequest &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.salesTrans, salesTrans) ||
                const DeepCollectionEquality()
                    .equals(other.salesTrans, salesTrans)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(salesTrans);

  @JsonKey(ignore: true)
  @override
  _$TransRequestCopyWith<_TransRequest> get copyWith =>
      __$TransRequestCopyWithImpl<_TransRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransRequestToJson(this);
  }
}

abstract class _TransRequest implements TransRequest {
  factory _TransRequest(
          {@required String token,
          @JsonKey(name: 'sales_trans') List<TransPostDataModel> salesTrans}) =
      _$_TransRequest;

  factory _TransRequest.fromJson(Map<String, dynamic> json) =
      _$_TransRequest.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'sales_trans')
  List<TransPostDataModel> get salesTrans;
  @override
  @JsonKey(ignore: true)
  _$TransRequestCopyWith<_TransRequest> get copyWith;
}
