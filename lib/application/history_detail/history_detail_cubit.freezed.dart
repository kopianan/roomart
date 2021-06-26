// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'history_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryDetailStateTearOff {
  const _$HistoryDetailStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(String error) {
    return _Error(
      error,
    );
  }

  _OnGetDetailHistory onGetDetailHistory(List<TransactionDetailV1> data) {
    return _OnGetDetailHistory(
      data,
    );
  }

  _OnGetFinishedDetail onGetFinishedDetail(
      List<TransactionFinishedDataModel> data) {
    return _OnGetFinishedDetail(
      data,
    );
  }
}

/// @nodoc
const $HistoryDetailState = _$HistoryDetailStateTearOff();

/// @nodoc
mixin _$HistoryDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TransactionDetailV1> data)
        onGetDetailHistory,
    required TResult Function(List<TransactionFinishedDataModel> data)
        onGetFinishedDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TransactionDetailV1> data)? onGetDetailHistory,
    TResult Function(List<TransactionFinishedDataModel> data)?
        onGetFinishedDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetDetailHistory value) onGetDetailHistory,
    required TResult Function(_OnGetFinishedDetail value) onGetFinishedDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetDetailHistory value)? onGetDetailHistory,
    TResult Function(_OnGetFinishedDetail value)? onGetFinishedDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDetailStateCopyWith<$Res> {
  factory $HistoryDetailStateCopyWith(
          HistoryDetailState value, $Res Function(HistoryDetailState) then) =
      _$HistoryDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryDetailStateCopyWithImpl<$Res>
    implements $HistoryDetailStateCopyWith<$Res> {
  _$HistoryDetailStateCopyWithImpl(this._value, this._then);

  final HistoryDetailState _value;
  // ignore: unused_field
  final $Res Function(HistoryDetailState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$HistoryDetailStateCopyWithImpl<$Res>
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
    return 'HistoryDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TransactionDetailV1> data)
        onGetDetailHistory,
    required TResult Function(List<TransactionFinishedDataModel> data)
        onGetFinishedDetail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TransactionDetailV1> data)? onGetDetailHistory,
    TResult Function(List<TransactionFinishedDataModel> data)?
        onGetFinishedDetail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetDetailHistory value) onGetDetailHistory,
    required TResult Function(_OnGetFinishedDetail value) onGetFinishedDetail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetDetailHistory value)? onGetDetailHistory,
    TResult Function(_OnGetFinishedDetail value)? onGetFinishedDetail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HistoryDetailState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$HistoryDetailStateCopyWithImpl<$Res>
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
    return 'HistoryDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TransactionDetailV1> data)
        onGetDetailHistory,
    required TResult Function(List<TransactionFinishedDataModel> data)
        onGetFinishedDetail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TransactionDetailV1> data)? onGetDetailHistory,
    TResult Function(List<TransactionFinishedDataModel> data)?
        onGetFinishedDetail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetDetailHistory value) onGetDetailHistory,
    required TResult Function(_OnGetFinishedDetail value) onGetFinishedDetail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetDetailHistory value)? onGetDetailHistory,
    TResult Function(_OnGetFinishedDetail value)? onGetFinishedDetail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HistoryDetailState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HistoryDetailStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HistoryDetailState.error(error: $error)';
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TransactionDetailV1> data)
        onGetDetailHistory,
    required TResult Function(List<TransactionFinishedDataModel> data)
        onGetFinishedDetail,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TransactionDetailV1> data)? onGetDetailHistory,
    TResult Function(List<TransactionFinishedDataModel> data)?
        onGetFinishedDetail,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetDetailHistory value) onGetDetailHistory,
    required TResult Function(_OnGetFinishedDetail value) onGetFinishedDetail,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetDetailHistory value)? onGetDetailHistory,
    TResult Function(_OnGetFinishedDetail value)? onGetFinishedDetail,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HistoryDetailState {
  const factory _Error(String error) = _$_Error;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetDetailHistoryCopyWith<$Res> {
  factory _$OnGetDetailHistoryCopyWith(
          _OnGetDetailHistory value, $Res Function(_OnGetDetailHistory) then) =
      __$OnGetDetailHistoryCopyWithImpl<$Res>;
  $Res call({List<TransactionDetailV1> data});
}

/// @nodoc
class __$OnGetDetailHistoryCopyWithImpl<$Res>
    extends _$HistoryDetailStateCopyWithImpl<$Res>
    implements _$OnGetDetailHistoryCopyWith<$Res> {
  __$OnGetDetailHistoryCopyWithImpl(
      _OnGetDetailHistory _value, $Res Function(_OnGetDetailHistory) _then)
      : super(_value, (v) => _then(v as _OnGetDetailHistory));

  @override
  _OnGetDetailHistory get _value => super._value as _OnGetDetailHistory;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnGetDetailHistory(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetailV1>,
    ));
  }
}

/// @nodoc

class _$_OnGetDetailHistory implements _OnGetDetailHistory {
  const _$_OnGetDetailHistory(this.data);

  @override
  final List<TransactionDetailV1> data;

  @override
  String toString() {
    return 'HistoryDetailState.onGetDetailHistory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetDetailHistory &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetDetailHistoryCopyWith<_OnGetDetailHistory> get copyWith =>
      __$OnGetDetailHistoryCopyWithImpl<_OnGetDetailHistory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TransactionDetailV1> data)
        onGetDetailHistory,
    required TResult Function(List<TransactionFinishedDataModel> data)
        onGetFinishedDetail,
  }) {
    return onGetDetailHistory(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TransactionDetailV1> data)? onGetDetailHistory,
    TResult Function(List<TransactionFinishedDataModel> data)?
        onGetFinishedDetail,
    required TResult orElse(),
  }) {
    if (onGetDetailHistory != null) {
      return onGetDetailHistory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetDetailHistory value) onGetDetailHistory,
    required TResult Function(_OnGetFinishedDetail value) onGetFinishedDetail,
  }) {
    return onGetDetailHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetDetailHistory value)? onGetDetailHistory,
    TResult Function(_OnGetFinishedDetail value)? onGetFinishedDetail,
    required TResult orElse(),
  }) {
    if (onGetDetailHistory != null) {
      return onGetDetailHistory(this);
    }
    return orElse();
  }
}

abstract class _OnGetDetailHistory implements HistoryDetailState {
  const factory _OnGetDetailHistory(List<TransactionDetailV1> data) =
      _$_OnGetDetailHistory;

  List<TransactionDetailV1> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetDetailHistoryCopyWith<_OnGetDetailHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetFinishedDetailCopyWith<$Res> {
  factory _$OnGetFinishedDetailCopyWith(_OnGetFinishedDetail value,
          $Res Function(_OnGetFinishedDetail) then) =
      __$OnGetFinishedDetailCopyWithImpl<$Res>;
  $Res call({List<TransactionFinishedDataModel> data});
}

/// @nodoc
class __$OnGetFinishedDetailCopyWithImpl<$Res>
    extends _$HistoryDetailStateCopyWithImpl<$Res>
    implements _$OnGetFinishedDetailCopyWith<$Res> {
  __$OnGetFinishedDetailCopyWithImpl(
      _OnGetFinishedDetail _value, $Res Function(_OnGetFinishedDetail) _then)
      : super(_value, (v) => _then(v as _OnGetFinishedDetail));

  @override
  _OnGetFinishedDetail get _value => super._value as _OnGetFinishedDetail;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnGetFinishedDetail(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransactionFinishedDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetFinishedDetail implements _OnGetFinishedDetail {
  const _$_OnGetFinishedDetail(this.data);

  @override
  final List<TransactionFinishedDataModel> data;

  @override
  String toString() {
    return 'HistoryDetailState.onGetFinishedDetail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetFinishedDetail &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetFinishedDetailCopyWith<_OnGetFinishedDetail> get copyWith =>
      __$OnGetFinishedDetailCopyWithImpl<_OnGetFinishedDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TransactionDetailV1> data)
        onGetDetailHistory,
    required TResult Function(List<TransactionFinishedDataModel> data)
        onGetFinishedDetail,
  }) {
    return onGetFinishedDetail(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TransactionDetailV1> data)? onGetDetailHistory,
    TResult Function(List<TransactionFinishedDataModel> data)?
        onGetFinishedDetail,
    required TResult orElse(),
  }) {
    if (onGetFinishedDetail != null) {
      return onGetFinishedDetail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetDetailHistory value) onGetDetailHistory,
    required TResult Function(_OnGetFinishedDetail value) onGetFinishedDetail,
  }) {
    return onGetFinishedDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetDetailHistory value)? onGetDetailHistory,
    TResult Function(_OnGetFinishedDetail value)? onGetFinishedDetail,
    required TResult orElse(),
  }) {
    if (onGetFinishedDetail != null) {
      return onGetFinishedDetail(this);
    }
    return orElse();
  }
}

abstract class _OnGetFinishedDetail implements HistoryDetailState {
  const factory _OnGetFinishedDetail(List<TransactionFinishedDataModel> data) =
      _$_OnGetFinishedDetail;

  List<TransactionFinishedDataModel> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetFinishedDetailCopyWith<_OnGetFinishedDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
