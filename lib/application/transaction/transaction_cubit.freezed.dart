// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Error error(String error) {
    return _Error(
      error,
    );
  }

// ignore: unused_element
  _OnGetHistoryTransaction onGetHistoryTransaction(
      List<TransactionDataModel> data) {
    return _OnGetHistoryTransaction(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionState = _$TransactionStateTearOff();

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String error),
    @required TResult onGetHistoryTransaction(List<TransactionDataModel> data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onGetHistoryTransaction(List<TransactionDataModel> data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetHistoryTransaction(_OnGetHistoryTransaction value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetHistoryTransaction(_OnGetHistoryTransaction value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TransactionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String error),
    @required TResult onGetHistoryTransaction(List<TransactionDataModel> data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetHistoryTransaction != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onGetHistoryTransaction(List<TransactionDataModel> data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetHistoryTransaction(_OnGetHistoryTransaction value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetHistoryTransaction != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetHistoryTransaction(_OnGetHistoryTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TransactionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String error),
    @required TResult onGetHistoryTransaction(List<TransactionDataModel> data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetHistoryTransaction != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onGetHistoryTransaction(List<TransactionDataModel> data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetHistoryTransaction(_OnGetHistoryTransaction value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetHistoryTransaction != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetHistoryTransaction(_OnGetHistoryTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TransactionState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_Error(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'TransactionState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String error),
    @required TResult onGetHistoryTransaction(List<TransactionDataModel> data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetHistoryTransaction != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onGetHistoryTransaction(List<TransactionDataModel> data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetHistoryTransaction(_OnGetHistoryTransaction value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetHistoryTransaction != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetHistoryTransaction(_OnGetHistoryTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TransactionState {
  const factory _Error(String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$OnGetHistoryTransactionCopyWith<$Res> {
  factory _$OnGetHistoryTransactionCopyWith(_OnGetHistoryTransaction value,
          $Res Function(_OnGetHistoryTransaction) then) =
      __$OnGetHistoryTransactionCopyWithImpl<$Res>;
  $Res call({List<TransactionDataModel> data});
}

/// @nodoc
class __$OnGetHistoryTransactionCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnGetHistoryTransactionCopyWith<$Res> {
  __$OnGetHistoryTransactionCopyWithImpl(_OnGetHistoryTransaction _value,
      $Res Function(_OnGetHistoryTransaction) _then)
      : super(_value, (v) => _then(v as _OnGetHistoryTransaction));

  @override
  _OnGetHistoryTransaction get _value =>
      super._value as _OnGetHistoryTransaction;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_OnGetHistoryTransaction(
      data == freezed ? _value.data : data as List<TransactionDataModel>,
    ));
  }
}

/// @nodoc
class _$_OnGetHistoryTransaction implements _OnGetHistoryTransaction {
  const _$_OnGetHistoryTransaction(this.data) : assert(data != null);

  @override
  final List<TransactionDataModel> data;

  @override
  String toString() {
    return 'TransactionState.onGetHistoryTransaction(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetHistoryTransaction &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetHistoryTransactionCopyWith<_OnGetHistoryTransaction> get copyWith =>
      __$OnGetHistoryTransactionCopyWithImpl<_OnGetHistoryTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String error),
    @required TResult onGetHistoryTransaction(List<TransactionDataModel> data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetHistoryTransaction != null);
    return onGetHistoryTransaction(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onGetHistoryTransaction(List<TransactionDataModel> data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetHistoryTransaction != null) {
      return onGetHistoryTransaction(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetHistoryTransaction(_OnGetHistoryTransaction value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetHistoryTransaction != null);
    return onGetHistoryTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetHistoryTransaction(_OnGetHistoryTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetHistoryTransaction != null) {
      return onGetHistoryTransaction(this);
    }
    return orElse();
  }
}

abstract class _OnGetHistoryTransaction implements TransactionState {
  const factory _OnGetHistoryTransaction(List<TransactionDataModel> data) =
      _$_OnGetHistoryTransaction;

  List<TransactionDataModel> get data;
  @JsonKey(ignore: true)
  _$OnGetHistoryTransactionCopyWith<_OnGetHistoryTransaction> get copyWith;
}
