// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

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

  _OnGetBanner onGetBanner(Either<String, List<BannerDataModel>> data) {
    return _OnGetBanner(
      data,
    );
  }

  _OnGetNewsList onGetNewsList(List<UpdateNewsDataModel> data) {
    return _OnGetNewsList(
      data,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(Either<String, List<BannerDataModel>> data)
        onGetBanner,
    required TResult Function(List<UpdateNewsDataModel> data) onGetNewsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(Either<String, List<BannerDataModel>> data)? onGetBanner,
    TResult Function(List<UpdateNewsDataModel> data)? onGetNewsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetBanner value) onGetBanner,
    required TResult Function(_OnGetNewsList value) onGetNewsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetBanner value)? onGetBanner,
    TResult Function(_OnGetNewsList value)? onGetNewsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.initial()';
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
    required TResult Function(Either<String, List<BannerDataModel>> data)
        onGetBanner,
    required TResult Function(List<UpdateNewsDataModel> data) onGetNewsList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(Either<String, List<BannerDataModel>> data)? onGetBanner,
    TResult Function(List<UpdateNewsDataModel> data)? onGetNewsList,
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
    required TResult Function(_OnGetBanner value) onGetBanner,
    required TResult Function(_OnGetNewsList value) onGetNewsList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetBanner value)? onGetBanner,
    TResult Function(_OnGetNewsList value)? onGetNewsList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.loading()';
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
    required TResult Function(Either<String, List<BannerDataModel>> data)
        onGetBanner,
    required TResult Function(List<UpdateNewsDataModel> data) onGetNewsList,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(Either<String, List<BannerDataModel>> data)? onGetBanner,
    TResult Function(List<UpdateNewsDataModel> data)? onGetNewsList,
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
    required TResult Function(_OnGetBanner value) onGetBanner,
    required TResult Function(_OnGetNewsList value) onGetNewsList,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetBanner value)? onGetBanner,
    TResult Function(_OnGetNewsList value)? onGetNewsList,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String e});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.error(e: $e)';
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
    required TResult Function(Either<String, List<BannerDataModel>> data)
        onGetBanner,
    required TResult Function(List<UpdateNewsDataModel> data) onGetNewsList,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(Either<String, List<BannerDataModel>> data)? onGetBanner,
    TResult Function(List<UpdateNewsDataModel> data)? onGetNewsList,
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
    required TResult Function(_OnGetBanner value) onGetBanner,
    required TResult Function(_OnGetNewsList value) onGetNewsList,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetBanner value)? onGetBanner,
    TResult Function(_OnGetNewsList value)? onGetNewsList,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error(String e) = _$_Error;

  String get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetBannerCopyWith<$Res> {
  factory _$OnGetBannerCopyWith(
          _OnGetBanner value, $Res Function(_OnGetBanner) then) =
      __$OnGetBannerCopyWithImpl<$Res>;
  $Res call({Either<String, List<BannerDataModel>> data});
}

/// @nodoc
class __$OnGetBannerCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$OnGetBannerCopyWith<$Res> {
  __$OnGetBannerCopyWithImpl(
      _OnGetBanner _value, $Res Function(_OnGetBanner) _then)
      : super(_value, (v) => _then(v as _OnGetBanner));

  @override
  _OnGetBanner get _value => super._value as _OnGetBanner;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnGetBanner(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<String, List<BannerDataModel>>,
    ));
  }
}

/// @nodoc

class _$_OnGetBanner implements _OnGetBanner {
  const _$_OnGetBanner(this.data);

  @override
  final Either<String, List<BannerDataModel>> data;

  @override
  String toString() {
    return 'HomeState.onGetBanner(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetBanner &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetBannerCopyWith<_OnGetBanner> get copyWith =>
      __$OnGetBannerCopyWithImpl<_OnGetBanner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(Either<String, List<BannerDataModel>> data)
        onGetBanner,
    required TResult Function(List<UpdateNewsDataModel> data) onGetNewsList,
  }) {
    return onGetBanner(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(Either<String, List<BannerDataModel>> data)? onGetBanner,
    TResult Function(List<UpdateNewsDataModel> data)? onGetNewsList,
    required TResult orElse(),
  }) {
    if (onGetBanner != null) {
      return onGetBanner(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetBanner value) onGetBanner,
    required TResult Function(_OnGetNewsList value) onGetNewsList,
  }) {
    return onGetBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetBanner value)? onGetBanner,
    TResult Function(_OnGetNewsList value)? onGetNewsList,
    required TResult orElse(),
  }) {
    if (onGetBanner != null) {
      return onGetBanner(this);
    }
    return orElse();
  }
}

abstract class _OnGetBanner implements HomeState {
  const factory _OnGetBanner(Either<String, List<BannerDataModel>> data) =
      _$_OnGetBanner;

  Either<String, List<BannerDataModel>> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetBannerCopyWith<_OnGetBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetNewsListCopyWith<$Res> {
  factory _$OnGetNewsListCopyWith(
          _OnGetNewsList value, $Res Function(_OnGetNewsList) then) =
      __$OnGetNewsListCopyWithImpl<$Res>;
  $Res call({List<UpdateNewsDataModel> data});
}

/// @nodoc
class __$OnGetNewsListCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$OnGetNewsListCopyWith<$Res> {
  __$OnGetNewsListCopyWithImpl(
      _OnGetNewsList _value, $Res Function(_OnGetNewsList) _then)
      : super(_value, (v) => _then(v as _OnGetNewsList));

  @override
  _OnGetNewsList get _value => super._value as _OnGetNewsList;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnGetNewsList(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UpdateNewsDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetNewsList implements _OnGetNewsList {
  const _$_OnGetNewsList(this.data);

  @override
  final List<UpdateNewsDataModel> data;

  @override
  String toString() {
    return 'HomeState.onGetNewsList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetNewsList &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetNewsListCopyWith<_OnGetNewsList> get copyWith =>
      __$OnGetNewsListCopyWithImpl<_OnGetNewsList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(Either<String, List<BannerDataModel>> data)
        onGetBanner,
    required TResult Function(List<UpdateNewsDataModel> data) onGetNewsList,
  }) {
    return onGetNewsList(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(Either<String, List<BannerDataModel>> data)? onGetBanner,
    TResult Function(List<UpdateNewsDataModel> data)? onGetNewsList,
    required TResult orElse(),
  }) {
    if (onGetNewsList != null) {
      return onGetNewsList(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetBanner value) onGetBanner,
    required TResult Function(_OnGetNewsList value) onGetNewsList,
  }) {
    return onGetNewsList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetBanner value)? onGetBanner,
    TResult Function(_OnGetNewsList value)? onGetNewsList,
    required TResult orElse(),
  }) {
    if (onGetNewsList != null) {
      return onGetNewsList(this);
    }
    return orElse();
  }
}

abstract class _OnGetNewsList implements HomeState {
  const factory _OnGetNewsList(List<UpdateNewsDataModel> data) =
      _$_OnGetNewsList;

  List<UpdateNewsDataModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetNewsListCopyWith<_OnGetNewsList> get copyWith =>
      throw _privateConstructorUsedError;
}
