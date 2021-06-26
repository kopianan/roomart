// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_req_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionReqRes _$TransactionReqResFromJson(Map<String, dynamic> json) {
  return TransactionHistoryRequest.fromJson(json);
}

/// @nodoc
class _$TransactionReqResTearOff {
  const _$TransactionReqResTearOff();

  TransactionHistoryRequest transactionHistoryRequest(
      {@JsonKey(name: "Token") String? token,
      @JsonKey(name: "CustomerID") String? customerId,
      @JsonKey(name: "Limit") int? limit,
      @JsonKey(name: "Offset") int? offset,
      @JsonKey(name: "Status") String? status}) {
    return TransactionHistoryRequest(
      token: token,
      customerId: customerId,
      limit: limit,
      offset: offset,
      status: status,
    );
  }

  TransactionReqRes fromJson(Map<String, Object> json) {
    return TransactionReqRes.fromJson(json);
  }
}

/// @nodoc
const $TransactionReqRes = _$TransactionReqResTearOff();

/// @nodoc
mixin _$TransactionReqRes {
  @JsonKey(name: "Token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "CustomerID")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "Limit")
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "Offset")
  int? get offset => throw _privateConstructorUsedError;
  @JsonKey(name: "Status")
  String? get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: "Token") String? token,
            @JsonKey(name: "CustomerID") String? customerId,
            @JsonKey(name: "Limit") int? limit,
            @JsonKey(name: "Offset") int? offset,
            @JsonKey(name: "Status") String? status)
        transactionHistoryRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "Token") String? token,
            @JsonKey(name: "CustomerID") String? customerId,
            @JsonKey(name: "Limit") int? limit,
            @JsonKey(name: "Offset") int? offset,
            @JsonKey(name: "Status") String? status)?
        transactionHistoryRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionHistoryRequest value)
        transactionHistoryRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionHistoryRequest value)?
        transactionHistoryRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionReqResCopyWith<TransactionReqRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionReqResCopyWith<$Res> {
  factory $TransactionReqResCopyWith(
          TransactionReqRes value, $Res Function(TransactionReqRes) then) =
      _$TransactionReqResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Token") String? token,
      @JsonKey(name: "CustomerID") String? customerId,
      @JsonKey(name: "Limit") int? limit,
      @JsonKey(name: "Offset") int? offset,
      @JsonKey(name: "Status") String? status});
}

/// @nodoc
class _$TransactionReqResCopyWithImpl<$Res>
    implements $TransactionReqResCopyWith<$Res> {
  _$TransactionReqResCopyWithImpl(this._value, this._then);

  final TransactionReqRes _value;
  // ignore: unused_field
  final $Res Function(TransactionReqRes) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? customerId = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $TransactionHistoryRequestCopyWith<$Res>
    implements $TransactionReqResCopyWith<$Res> {
  factory $TransactionHistoryRequestCopyWith(TransactionHistoryRequest value,
          $Res Function(TransactionHistoryRequest) then) =
      _$TransactionHistoryRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Token") String? token,
      @JsonKey(name: "CustomerID") String? customerId,
      @JsonKey(name: "Limit") int? limit,
      @JsonKey(name: "Offset") int? offset,
      @JsonKey(name: "Status") String? status});
}

/// @nodoc
class _$TransactionHistoryRequestCopyWithImpl<$Res>
    extends _$TransactionReqResCopyWithImpl<$Res>
    implements $TransactionHistoryRequestCopyWith<$Res> {
  _$TransactionHistoryRequestCopyWithImpl(TransactionHistoryRequest _value,
      $Res Function(TransactionHistoryRequest) _then)
      : super(_value, (v) => _then(v as TransactionHistoryRequest));

  @override
  TransactionHistoryRequest get _value =>
      super._value as TransactionHistoryRequest;

  @override
  $Res call({
    Object? token = freezed,
    Object? customerId = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? status = freezed,
  }) {
    return _then(TransactionHistoryRequest(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionHistoryRequest implements TransactionHistoryRequest {
  _$TransactionHistoryRequest(
      {@JsonKey(name: "Token") this.token,
      @JsonKey(name: "CustomerID") this.customerId,
      @JsonKey(name: "Limit") this.limit,
      @JsonKey(name: "Offset") this.offset,
      @JsonKey(name: "Status") this.status});

  factory _$TransactionHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$_$TransactionHistoryRequestFromJson(json);

  @override
  @JsonKey(name: "Token")
  final String? token;
  @override
  @JsonKey(name: "CustomerID")
  final String? customerId;
  @override
  @JsonKey(name: "Limit")
  final int? limit;
  @override
  @JsonKey(name: "Offset")
  final int? offset;
  @override
  @JsonKey(name: "Status")
  final String? status;

  @override
  String toString() {
    return 'TransactionReqRes.transactionHistoryRequest(token: $token, customerId: $customerId, limit: $limit, offset: $offset, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionHistoryRequest &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $TransactionHistoryRequestCopyWith<TransactionHistoryRequest> get copyWith =>
      _$TransactionHistoryRequestCopyWithImpl<TransactionHistoryRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: "Token") String? token,
            @JsonKey(name: "CustomerID") String? customerId,
            @JsonKey(name: "Limit") int? limit,
            @JsonKey(name: "Offset") int? offset,
            @JsonKey(name: "Status") String? status)
        transactionHistoryRequest,
  }) {
    return transactionHistoryRequest(token, customerId, limit, offset, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "Token") String? token,
            @JsonKey(name: "CustomerID") String? customerId,
            @JsonKey(name: "Limit") int? limit,
            @JsonKey(name: "Offset") int? offset,
            @JsonKey(name: "Status") String? status)?
        transactionHistoryRequest,
    required TResult orElse(),
  }) {
    if (transactionHistoryRequest != null) {
      return transactionHistoryRequest(
          token, customerId, limit, offset, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionHistoryRequest value)
        transactionHistoryRequest,
  }) {
    return transactionHistoryRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionHistoryRequest value)?
        transactionHistoryRequest,
    required TResult orElse(),
  }) {
    if (transactionHistoryRequest != null) {
      return transactionHistoryRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TransactionHistoryRequestToJson(this);
  }
}

abstract class TransactionHistoryRequest implements TransactionReqRes {
  factory TransactionHistoryRequest(
      {@JsonKey(name: "Token") String? token,
      @JsonKey(name: "CustomerID") String? customerId,
      @JsonKey(name: "Limit") int? limit,
      @JsonKey(name: "Offset") int? offset,
      @JsonKey(name: "Status") String? status}) = _$TransactionHistoryRequest;

  factory TransactionHistoryRequest.fromJson(Map<String, dynamic> json) =
      _$TransactionHistoryRequest.fromJson;

  @override
  @JsonKey(name: "Token")
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CustomerID")
  String? get customerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Limit")
  int? get limit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Offset")
  int? get offset => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Status")
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TransactionHistoryRequestCopyWith<TransactionHistoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
