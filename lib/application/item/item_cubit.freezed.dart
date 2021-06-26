// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemStateTearOff {
  const _$ItemStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(String e) {
    return _Error(
      e,
    );
  }

  _OnGetItemLazy onGetItemLazy(List<DataItemModel> data) {
    return _OnGetItemLazy(
      data,
    );
  }

  _OnGetSearchItem onGetSearchItem(List<DataItemModel> data) {
    return _OnGetSearchItem(
      data,
    );
  }

  _OnGetItemByCategoryId onGetItemByCategoryId(List<DataItemModel> data) {
    return _OnGetItemByCategoryId(
      data,
    );
  }
}

/// @nodoc
const $ItemState = _$ItemStateTearOff();

/// @nodoc
mixin _$ItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(List<DataItemModel> data) onGetItemLazy,
    required TResult Function(List<DataItemModel> data) onGetSearchItem,
    required TResult Function(List<DataItemModel> data) onGetItemByCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<DataItemModel> data)? onGetItemLazy,
    TResult Function(List<DataItemModel> data)? onGetSearchItem,
    TResult Function(List<DataItemModel> data)? onGetItemByCategoryId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetItemLazy value) onGetItemLazy,
    required TResult Function(_OnGetSearchItem value) onGetSearchItem,
    required TResult Function(_OnGetItemByCategoryId value)
        onGetItemByCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetItemLazy value)? onGetItemLazy,
    TResult Function(_OnGetSearchItem value)? onGetSearchItem,
    TResult Function(_OnGetItemByCategoryId value)? onGetItemByCategoryId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res> implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  final ItemState _value;
  // ignore: unused_field
  final $Res Function(ItemState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
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
    return 'ItemState.initial()';
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
    required TResult Function(String e) error,
    required TResult Function(List<DataItemModel> data) onGetItemLazy,
    required TResult Function(List<DataItemModel> data) onGetSearchItem,
    required TResult Function(List<DataItemModel> data) onGetItemByCategoryId,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<DataItemModel> data)? onGetItemLazy,
    TResult Function(List<DataItemModel> data)? onGetSearchItem,
    TResult Function(List<DataItemModel> data)? onGetItemByCategoryId,
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
    required TResult Function(_OnGetItemLazy value) onGetItemLazy,
    required TResult Function(_OnGetSearchItem value) onGetSearchItem,
    required TResult Function(_OnGetItemByCategoryId value)
        onGetItemByCategoryId,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetItemLazy value)? onGetItemLazy,
    TResult Function(_OnGetSearchItem value)? onGetSearchItem,
    TResult Function(_OnGetItemByCategoryId value)? onGetItemByCategoryId,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ItemState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
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
    return 'ItemState.loading()';
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
    required TResult Function(String e) error,
    required TResult Function(List<DataItemModel> data) onGetItemLazy,
    required TResult Function(List<DataItemModel> data) onGetSearchItem,
    required TResult Function(List<DataItemModel> data) onGetItemByCategoryId,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<DataItemModel> data)? onGetItemLazy,
    TResult Function(List<DataItemModel> data)? onGetSearchItem,
    TResult Function(List<DataItemModel> data)? onGetItemByCategoryId,
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
    required TResult Function(_OnGetItemLazy value) onGetItemLazy,
    required TResult Function(_OnGetSearchItem value) onGetSearchItem,
    required TResult Function(_OnGetItemByCategoryId value)
        onGetItemByCategoryId,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetItemLazy value)? onGetItemLazy,
    TResult Function(_OnGetSearchItem value)? onGetSearchItem,
    TResult Function(_OnGetItemByCategoryId value)? onGetItemByCategoryId,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ItemState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String e});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_Error(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.e);

  @override
  final String e;

  @override
  String toString() {
    return 'ItemState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(List<DataItemModel> data) onGetItemLazy,
    required TResult Function(List<DataItemModel> data) onGetSearchItem,
    required TResult Function(List<DataItemModel> data) onGetItemByCategoryId,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<DataItemModel> data)? onGetItemLazy,
    TResult Function(List<DataItemModel> data)? onGetSearchItem,
    TResult Function(List<DataItemModel> data)? onGetItemByCategoryId,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetItemLazy value) onGetItemLazy,
    required TResult Function(_OnGetSearchItem value) onGetSearchItem,
    required TResult Function(_OnGetItemByCategoryId value)
        onGetItemByCategoryId,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetItemLazy value)? onGetItemLazy,
    TResult Function(_OnGetSearchItem value)? onGetSearchItem,
    TResult Function(_OnGetItemByCategoryId value)? onGetItemByCategoryId,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ItemState {
  const factory _Error(String e) = _$_Error;

  String get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetItemLazyCopyWith<$Res> {
  factory _$OnGetItemLazyCopyWith(
          _OnGetItemLazy value, $Res Function(_OnGetItemLazy) then) =
      __$OnGetItemLazyCopyWithImpl<$Res>;
  $Res call({List<DataItemModel> data});
}

/// @nodoc
class __$OnGetItemLazyCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$OnGetItemLazyCopyWith<$Res> {
  __$OnGetItemLazyCopyWithImpl(
      _OnGetItemLazy _value, $Res Function(_OnGetItemLazy) _then)
      : super(_value, (v) => _then(v as _OnGetItemLazy));

  @override
  _OnGetItemLazy get _value => super._value as _OnGetItemLazy;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnGetItemLazy(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataItemModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetItemLazy implements _OnGetItemLazy {
  const _$_OnGetItemLazy(this.data);

  @override
  final List<DataItemModel> data;

  @override
  String toString() {
    return 'ItemState.onGetItemLazy(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetItemLazy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetItemLazyCopyWith<_OnGetItemLazy> get copyWith =>
      __$OnGetItemLazyCopyWithImpl<_OnGetItemLazy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(List<DataItemModel> data) onGetItemLazy,
    required TResult Function(List<DataItemModel> data) onGetSearchItem,
    required TResult Function(List<DataItemModel> data) onGetItemByCategoryId,
  }) {
    return onGetItemLazy(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<DataItemModel> data)? onGetItemLazy,
    TResult Function(List<DataItemModel> data)? onGetSearchItem,
    TResult Function(List<DataItemModel> data)? onGetItemByCategoryId,
    required TResult orElse(),
  }) {
    if (onGetItemLazy != null) {
      return onGetItemLazy(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetItemLazy value) onGetItemLazy,
    required TResult Function(_OnGetSearchItem value) onGetSearchItem,
    required TResult Function(_OnGetItemByCategoryId value)
        onGetItemByCategoryId,
  }) {
    return onGetItemLazy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetItemLazy value)? onGetItemLazy,
    TResult Function(_OnGetSearchItem value)? onGetSearchItem,
    TResult Function(_OnGetItemByCategoryId value)? onGetItemByCategoryId,
    required TResult orElse(),
  }) {
    if (onGetItemLazy != null) {
      return onGetItemLazy(this);
    }
    return orElse();
  }
}

abstract class _OnGetItemLazy implements ItemState {
  const factory _OnGetItemLazy(List<DataItemModel> data) = _$_OnGetItemLazy;

  List<DataItemModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetItemLazyCopyWith<_OnGetItemLazy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetSearchItemCopyWith<$Res> {
  factory _$OnGetSearchItemCopyWith(
          _OnGetSearchItem value, $Res Function(_OnGetSearchItem) then) =
      __$OnGetSearchItemCopyWithImpl<$Res>;
  $Res call({List<DataItemModel> data});
}

/// @nodoc
class __$OnGetSearchItemCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$OnGetSearchItemCopyWith<$Res> {
  __$OnGetSearchItemCopyWithImpl(
      _OnGetSearchItem _value, $Res Function(_OnGetSearchItem) _then)
      : super(_value, (v) => _then(v as _OnGetSearchItem));

  @override
  _OnGetSearchItem get _value => super._value as _OnGetSearchItem;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnGetSearchItem(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataItemModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetSearchItem implements _OnGetSearchItem {
  const _$_OnGetSearchItem(this.data);

  @override
  final List<DataItemModel> data;

  @override
  String toString() {
    return 'ItemState.onGetSearchItem(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetSearchItem &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetSearchItemCopyWith<_OnGetSearchItem> get copyWith =>
      __$OnGetSearchItemCopyWithImpl<_OnGetSearchItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(List<DataItemModel> data) onGetItemLazy,
    required TResult Function(List<DataItemModel> data) onGetSearchItem,
    required TResult Function(List<DataItemModel> data) onGetItemByCategoryId,
  }) {
    return onGetSearchItem(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<DataItemModel> data)? onGetItemLazy,
    TResult Function(List<DataItemModel> data)? onGetSearchItem,
    TResult Function(List<DataItemModel> data)? onGetItemByCategoryId,
    required TResult orElse(),
  }) {
    if (onGetSearchItem != null) {
      return onGetSearchItem(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetItemLazy value) onGetItemLazy,
    required TResult Function(_OnGetSearchItem value) onGetSearchItem,
    required TResult Function(_OnGetItemByCategoryId value)
        onGetItemByCategoryId,
  }) {
    return onGetSearchItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetItemLazy value)? onGetItemLazy,
    TResult Function(_OnGetSearchItem value)? onGetSearchItem,
    TResult Function(_OnGetItemByCategoryId value)? onGetItemByCategoryId,
    required TResult orElse(),
  }) {
    if (onGetSearchItem != null) {
      return onGetSearchItem(this);
    }
    return orElse();
  }
}

abstract class _OnGetSearchItem implements ItemState {
  const factory _OnGetSearchItem(List<DataItemModel> data) = _$_OnGetSearchItem;

  List<DataItemModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetSearchItemCopyWith<_OnGetSearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetItemByCategoryIdCopyWith<$Res> {
  factory _$OnGetItemByCategoryIdCopyWith(_OnGetItemByCategoryId value,
          $Res Function(_OnGetItemByCategoryId) then) =
      __$OnGetItemByCategoryIdCopyWithImpl<$Res>;
  $Res call({List<DataItemModel> data});
}

/// @nodoc
class __$OnGetItemByCategoryIdCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res>
    implements _$OnGetItemByCategoryIdCopyWith<$Res> {
  __$OnGetItemByCategoryIdCopyWithImpl(_OnGetItemByCategoryId _value,
      $Res Function(_OnGetItemByCategoryId) _then)
      : super(_value, (v) => _then(v as _OnGetItemByCategoryId));

  @override
  _OnGetItemByCategoryId get _value => super._value as _OnGetItemByCategoryId;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnGetItemByCategoryId(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataItemModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetItemByCategoryId implements _OnGetItemByCategoryId {
  const _$_OnGetItemByCategoryId(this.data);

  @override
  final List<DataItemModel> data;

  @override
  String toString() {
    return 'ItemState.onGetItemByCategoryId(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetItemByCategoryId &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetItemByCategoryIdCopyWith<_OnGetItemByCategoryId> get copyWith =>
      __$OnGetItemByCategoryIdCopyWithImpl<_OnGetItemByCategoryId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(List<DataItemModel> data) onGetItemLazy,
    required TResult Function(List<DataItemModel> data) onGetSearchItem,
    required TResult Function(List<DataItemModel> data) onGetItemByCategoryId,
  }) {
    return onGetItemByCategoryId(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<DataItemModel> data)? onGetItemLazy,
    TResult Function(List<DataItemModel> data)? onGetSearchItem,
    TResult Function(List<DataItemModel> data)? onGetItemByCategoryId,
    required TResult orElse(),
  }) {
    if (onGetItemByCategoryId != null) {
      return onGetItemByCategoryId(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetItemLazy value) onGetItemLazy,
    required TResult Function(_OnGetSearchItem value) onGetSearchItem,
    required TResult Function(_OnGetItemByCategoryId value)
        onGetItemByCategoryId,
  }) {
    return onGetItemByCategoryId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetItemLazy value)? onGetItemLazy,
    TResult Function(_OnGetSearchItem value)? onGetSearchItem,
    TResult Function(_OnGetItemByCategoryId value)? onGetItemByCategoryId,
    required TResult orElse(),
  }) {
    if (onGetItemByCategoryId != null) {
      return onGetItemByCategoryId(this);
    }
    return orElse();
  }
}

abstract class _OnGetItemByCategoryId implements ItemState {
  const factory _OnGetItemByCategoryId(List<DataItemModel> data) =
      _$_OnGetItemByCategoryId;

  List<DataItemModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetItemByCategoryIdCopyWith<_OnGetItemByCategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}
