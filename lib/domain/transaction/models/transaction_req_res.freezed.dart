// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_req_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransactionReqRes _$TransactionReqResFromJson(Map<String, dynamic> json) {
  return TransactionHistoryRequest.fromJson(json);
}

/// @nodoc
class _$TransactionReqResTearOff {
  const _$TransactionReqResTearOff();

// ignore: unused_element
  TransactionHistoryRequest transactionHistoryRequest(
      {@JsonKey(name: 'Token') String token,
      @JsonKey(name: 'CustomerID') String customerId,
      @JsonKey(name: 'Limit') int limit,
      @JsonKey(name: 'Offset') int offset,
      @JsonKey(name: 'Status') String status}) {
    return TransactionHistoryRequest(
      token: token,
      customerId: customerId,
      limit: limit,
      offset: offset,
      status: status,
    );
  }

// ignore: unused_element
  TransactionReqRes fromJson(Map<String, Object> json) {
    return TransactionReqRes.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionReqRes = _$TransactionReqResTearOff();

/// @nodoc
mixin _$TransactionReqRes {
  @JsonKey(name: 'Token')
  String get token;
  @JsonKey(name: 'CustomerID')
  String get customerId;
  @JsonKey(name: 'Limit')
  int get limit;
  @JsonKey(name: 'Offset')
  int get offset;
  @JsonKey(name: 'Status')
  String get status;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult transactionHistoryRequest(
            @JsonKey(name: 'Token') String token,
            @JsonKey(name: 'CustomerID') String customerId,
            @JsonKey(name: 'Limit') int limit,
            @JsonKey(name: 'Offset') int offset,
            @JsonKey(name: 'Status') String status),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult transactionHistoryRequest(
        @JsonKey(name: 'Token') String token,
        @JsonKey(name: 'CustomerID') String customerId,
        @JsonKey(name: 'Limit') int limit,
        @JsonKey(name: 'Offset') int offset,
        @JsonKey(name: 'Status') String status),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult transactionHistoryRequest(TransactionHistoryRequest value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult transactionHistoryRequest(TransactionHistoryRequest value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TransactionReqResCopyWith<TransactionReqRes> get copyWith;
}

/// @nodoc
abstract class $TransactionReqResCopyWith<$Res> {
  factory $TransactionReqResCopyWith(
          TransactionReqRes value, $Res Function(TransactionReqRes) then) =
      _$TransactionReqResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Token') String token,
      @JsonKey(name: 'CustomerID') String customerId,
      @JsonKey(name: 'Limit') int limit,
      @JsonKey(name: 'Offset') int offset,
      @JsonKey(name: 'Status') String status});
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
    Object token = freezed,
    Object customerId = freezed,
    Object limit = freezed,
    Object offset = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
      customerId:
          customerId == freezed ? _value.customerId : customerId as String,
      limit: limit == freezed ? _value.limit : limit as int,
      offset: offset == freezed ? _value.offset : offset as int,
      status: status == freezed ? _value.status : status as String,
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
      {@JsonKey(name: 'Token') String token,
      @JsonKey(name: 'CustomerID') String customerId,
      @JsonKey(name: 'Limit') int limit,
      @JsonKey(name: 'Offset') int offset,
      @JsonKey(name: 'Status') String status});
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
    Object token = freezed,
    Object customerId = freezed,
    Object limit = freezed,
    Object offset = freezed,
    Object status = freezed,
  }) {
    return _then(TransactionHistoryRequest(
      token: token == freezed ? _value.token : token as String,
      customerId:
          customerId == freezed ? _value.customerId : customerId as String,
      limit: limit == freezed ? _value.limit : limit as int,
      offset: offset == freezed ? _value.offset : offset as int,
      status: status == freezed ? _value.status : status as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$TransactionHistoryRequest implements TransactionHistoryRequest {
  _$TransactionHistoryRequest(
      {@JsonKey(name: 'Token') this.token,
      @JsonKey(name: 'CustomerID') this.customerId,
      @JsonKey(name: 'Limit') this.limit,
      @JsonKey(name: 'Offset') this.offset,
      @JsonKey(name: 'Status') this.status});

  factory _$TransactionHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$_$TransactionHistoryRequestFromJson(json);

  @override
  @JsonKey(name: 'Token')
  final String token;
  @override
  @JsonKey(name: 'CustomerID')
  final String customerId;
  @override
  @JsonKey(name: 'Limit')
  final int limit;
  @override
  @JsonKey(name: 'Offset')
  final int offset;
  @override
  @JsonKey(name: 'Status')
  final String status;

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
  TResult when<TResult extends Object>({
    @required
        TResult transactionHistoryRequest(
            @JsonKey(name: 'Token') String token,
            @JsonKey(name: 'CustomerID') String customerId,
            @JsonKey(name: 'Limit') int limit,
            @JsonKey(name: 'Offset') int offset,
            @JsonKey(name: 'Status') String status),
  }) {
    assert(transactionHistoryRequest != null);
    return transactionHistoryRequest(token, customerId, limit, offset, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult transactionHistoryRequest(
        @JsonKey(name: 'Token') String token,
        @JsonKey(name: 'CustomerID') String customerId,
        @JsonKey(name: 'Limit') int limit,
        @JsonKey(name: 'Offset') int offset,
        @JsonKey(name: 'Status') String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (transactionHistoryRequest != null) {
      return transactionHistoryRequest(
          token, customerId, limit, offset, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult transactionHistoryRequest(TransactionHistoryRequest value),
  }) {
    assert(transactionHistoryRequest != null);
    return transactionHistoryRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult transactionHistoryRequest(TransactionHistoryRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
      {@JsonKey(name: 'Token') String token,
      @JsonKey(name: 'CustomerID') String customerId,
      @JsonKey(name: 'Limit') int limit,
      @JsonKey(name: 'Offset') int offset,
      @JsonKey(name: 'Status') String status}) = _$TransactionHistoryRequest;

  factory TransactionHistoryRequest.fromJson(Map<String, dynamic> json) =
      _$TransactionHistoryRequest.fromJson;

  @override
  @JsonKey(name: 'Token')
  String get token;
  @override
  @JsonKey(name: 'CustomerID')
  String get customerId;
  @override
  @JsonKey(name: 'Limit')
  int get limit;
  @override
  @JsonKey(name: 'Offset')
  int get offset;
  @override
  @JsonKey(name: 'Status')
  String get status;
  @override
  @JsonKey(ignore: true)
  $TransactionHistoryRequestCopyWith<TransactionHistoryRequest> get copyWith;
}
