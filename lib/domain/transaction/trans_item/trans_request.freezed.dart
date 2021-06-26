// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'trans_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransRequest _$TransRequestFromJson(Map<String, dynamic> json) {
  return _TransRequest.fromJson(json);
}

/// @nodoc
class _$TransRequestTearOff {
  const _$TransRequestTearOff();

  _TransRequest call(
      {required String token,
      @JsonKey(name: "sales_trans") List<TransPostDataModel>? salesTrans}) {
    return _TransRequest(
      token: token,
      salesTrans: salesTrans,
    );
  }

  TransRequest fromJson(Map<String, Object> json) {
    return TransRequest.fromJson(json);
  }
}

/// @nodoc
const $TransRequest = _$TransRequestTearOff();

/// @nodoc
mixin _$TransRequest {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_trans")
  List<TransPostDataModel>? get salesTrans =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransRequestCopyWith<TransRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransRequestCopyWith<$Res> {
  factory $TransRequestCopyWith(
          TransRequest value, $Res Function(TransRequest) then) =
      _$TransRequestCopyWithImpl<$Res>;
  $Res call(
      {String token,
      @JsonKey(name: "sales_trans") List<TransPostDataModel>? salesTrans});
}

/// @nodoc
class _$TransRequestCopyWithImpl<$Res> implements $TransRequestCopyWith<$Res> {
  _$TransRequestCopyWithImpl(this._value, this._then);

  final TransRequest _value;
  // ignore: unused_field
  final $Res Function(TransRequest) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? salesTrans = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      salesTrans: salesTrans == freezed
          ? _value.salesTrans
          : salesTrans // ignore: cast_nullable_to_non_nullable
              as List<TransPostDataModel>?,
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
      @JsonKey(name: "sales_trans") List<TransPostDataModel>? salesTrans});
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
    Object? token = freezed,
    Object? salesTrans = freezed,
  }) {
    return _then(_TransRequest(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      salesTrans: salesTrans == freezed
          ? _value.salesTrans
          : salesTrans // ignore: cast_nullable_to_non_nullable
              as List<TransPostDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransRequest implements _TransRequest {
  _$_TransRequest(
      {required this.token, @JsonKey(name: "sales_trans") this.salesTrans});

  factory _$_TransRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_TransRequestFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: "sales_trans")
  final List<TransPostDataModel>? salesTrans;

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
          {required String token,
          @JsonKey(name: "sales_trans") List<TransPostDataModel>? salesTrans}) =
      _$_TransRequest;

  factory _TransRequest.fromJson(Map<String, dynamic> json) =
      _$_TransRequest.fromJson;

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_trans")
  List<TransPostDataModel>? get salesTrans =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransRequestCopyWith<_TransRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
