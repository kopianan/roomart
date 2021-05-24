// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoryStateTearOff {
  const _$CategoryStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Error error(String e) {
    return _Error(
      e,
    );
  }

// ignore: unused_element
  _OnGetAllCategory onGetAllCategory(List<CategoryModel> data) {
    return _OnGetAllCategory(
      data,
    );
  }

// ignore: unused_element
  _OnGetCategoryByParentId onGetCategoryByParentId(List<CategoryModel> data) {
    return _OnGetCategoryByParentId(
      data,
    );
  }

// ignore: unused_element
  _OnCategoryEnd onCategoryEnd(CategoryModel data) {
    return _OnCategoryEnd(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryState = _$CategoryStateTearOff();

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult onGetAllCategory(List<CategoryModel> data),
    @required TResult onGetCategoryByParentId(List<CategoryModel> data),
    @required TResult onCategoryEnd(CategoryModel data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult onGetAllCategory(List<CategoryModel> data),
    TResult onGetCategoryByParentId(List<CategoryModel> data),
    TResult onCategoryEnd(CategoryModel data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetAllCategory(_OnGetAllCategory value),
    @required TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    @required TResult onCategoryEnd(_OnCategoryEnd value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetAllCategory(_OnGetAllCategory value),
    TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    TResult onCategoryEnd(_OnCategoryEnd value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CategoryStateCopyWithImpl<$Res>
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
    return 'CategoryState.initial()';
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
    @required TResult error(String e),
    @required TResult onGetAllCategory(List<CategoryModel> data),
    @required TResult onGetCategoryByParentId(List<CategoryModel> data),
    @required TResult onCategoryEnd(CategoryModel data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult onGetAllCategory(List<CategoryModel> data),
    TResult onGetCategoryByParentId(List<CategoryModel> data),
    TResult onCategoryEnd(CategoryModel data),
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
    @required TResult onGetAllCategory(_OnGetAllCategory value),
    @required TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    @required TResult onCategoryEnd(_OnCategoryEnd value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetAllCategory(_OnGetAllCategory value),
    TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    TResult onCategoryEnd(_OnCategoryEnd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$CategoryStateCopyWithImpl<$Res>
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
    return 'CategoryState.loading()';
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
    @required TResult error(String e),
    @required TResult onGetAllCategory(List<CategoryModel> data),
    @required TResult onGetCategoryByParentId(List<CategoryModel> data),
    @required TResult onCategoryEnd(CategoryModel data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult onGetAllCategory(List<CategoryModel> data),
    TResult onGetCategoryByParentId(List<CategoryModel> data),
    TResult onCategoryEnd(CategoryModel data),
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
    @required TResult onGetAllCategory(_OnGetAllCategory value),
    @required TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    @required TResult onCategoryEnd(_OnCategoryEnd value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetAllCategory(_OnGetAllCategory value),
    TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    TResult onCategoryEnd(_OnCategoryEnd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CategoryState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String e});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$CategoryStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object e = freezed,
  }) {
    return _then(_Error(
      e == freezed ? _value.e : e as String,
    ));
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.e) : assert(e != null);

  @override
  final String e;

  @override
  String toString() {
    return 'CategoryState.error(e: $e)';
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult onGetAllCategory(List<CategoryModel> data),
    @required TResult onGetCategoryByParentId(List<CategoryModel> data),
    @required TResult onCategoryEnd(CategoryModel data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult onGetAllCategory(List<CategoryModel> data),
    TResult onGetCategoryByParentId(List<CategoryModel> data),
    TResult onCategoryEnd(CategoryModel data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetAllCategory(_OnGetAllCategory value),
    @required TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    @required TResult onCategoryEnd(_OnCategoryEnd value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetAllCategory(_OnGetAllCategory value),
    TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    TResult onCategoryEnd(_OnCategoryEnd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CategoryState {
  const factory _Error(String e) = _$_Error;

  String get e;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$OnGetAllCategoryCopyWith<$Res> {
  factory _$OnGetAllCategoryCopyWith(
          _OnGetAllCategory value, $Res Function(_OnGetAllCategory) then) =
      __$OnGetAllCategoryCopyWithImpl<$Res>;
  $Res call({List<CategoryModel> data});
}

/// @nodoc
class __$OnGetAllCategoryCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$OnGetAllCategoryCopyWith<$Res> {
  __$OnGetAllCategoryCopyWithImpl(
      _OnGetAllCategory _value, $Res Function(_OnGetAllCategory) _then)
      : super(_value, (v) => _then(v as _OnGetAllCategory));

  @override
  _OnGetAllCategory get _value => super._value as _OnGetAllCategory;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_OnGetAllCategory(
      data == freezed ? _value.data : data as List<CategoryModel>,
    ));
  }
}

/// @nodoc
class _$_OnGetAllCategory implements _OnGetAllCategory {
  const _$_OnGetAllCategory(this.data) : assert(data != null);

  @override
  final List<CategoryModel> data;

  @override
  String toString() {
    return 'CategoryState.onGetAllCategory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetAllCategory &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetAllCategoryCopyWith<_OnGetAllCategory> get copyWith =>
      __$OnGetAllCategoryCopyWithImpl<_OnGetAllCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult onGetAllCategory(List<CategoryModel> data),
    @required TResult onGetCategoryByParentId(List<CategoryModel> data),
    @required TResult onCategoryEnd(CategoryModel data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return onGetAllCategory(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult onGetAllCategory(List<CategoryModel> data),
    TResult onGetCategoryByParentId(List<CategoryModel> data),
    TResult onCategoryEnd(CategoryModel data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetAllCategory != null) {
      return onGetAllCategory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetAllCategory(_OnGetAllCategory value),
    @required TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    @required TResult onCategoryEnd(_OnCategoryEnd value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return onGetAllCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetAllCategory(_OnGetAllCategory value),
    TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    TResult onCategoryEnd(_OnCategoryEnd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetAllCategory != null) {
      return onGetAllCategory(this);
    }
    return orElse();
  }
}

abstract class _OnGetAllCategory implements CategoryState {
  const factory _OnGetAllCategory(List<CategoryModel> data) =
      _$_OnGetAllCategory;

  List<CategoryModel> get data;
  @JsonKey(ignore: true)
  _$OnGetAllCategoryCopyWith<_OnGetAllCategory> get copyWith;
}

/// @nodoc
abstract class _$OnGetCategoryByParentIdCopyWith<$Res> {
  factory _$OnGetCategoryByParentIdCopyWith(_OnGetCategoryByParentId value,
          $Res Function(_OnGetCategoryByParentId) then) =
      __$OnGetCategoryByParentIdCopyWithImpl<$Res>;
  $Res call({List<CategoryModel> data});
}

/// @nodoc
class __$OnGetCategoryByParentIdCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$OnGetCategoryByParentIdCopyWith<$Res> {
  __$OnGetCategoryByParentIdCopyWithImpl(_OnGetCategoryByParentId _value,
      $Res Function(_OnGetCategoryByParentId) _then)
      : super(_value, (v) => _then(v as _OnGetCategoryByParentId));

  @override
  _OnGetCategoryByParentId get _value =>
      super._value as _OnGetCategoryByParentId;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_OnGetCategoryByParentId(
      data == freezed ? _value.data : data as List<CategoryModel>,
    ));
  }
}

/// @nodoc
class _$_OnGetCategoryByParentId implements _OnGetCategoryByParentId {
  const _$_OnGetCategoryByParentId(this.data) : assert(data != null);

  @override
  final List<CategoryModel> data;

  @override
  String toString() {
    return 'CategoryState.onGetCategoryByParentId(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetCategoryByParentId &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetCategoryByParentIdCopyWith<_OnGetCategoryByParentId> get copyWith =>
      __$OnGetCategoryByParentIdCopyWithImpl<_OnGetCategoryByParentId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult onGetAllCategory(List<CategoryModel> data),
    @required TResult onGetCategoryByParentId(List<CategoryModel> data),
    @required TResult onCategoryEnd(CategoryModel data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return onGetCategoryByParentId(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult onGetAllCategory(List<CategoryModel> data),
    TResult onGetCategoryByParentId(List<CategoryModel> data),
    TResult onCategoryEnd(CategoryModel data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetCategoryByParentId != null) {
      return onGetCategoryByParentId(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetAllCategory(_OnGetAllCategory value),
    @required TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    @required TResult onCategoryEnd(_OnCategoryEnd value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return onGetCategoryByParentId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetAllCategory(_OnGetAllCategory value),
    TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    TResult onCategoryEnd(_OnCategoryEnd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetCategoryByParentId != null) {
      return onGetCategoryByParentId(this);
    }
    return orElse();
  }
}

abstract class _OnGetCategoryByParentId implements CategoryState {
  const factory _OnGetCategoryByParentId(List<CategoryModel> data) =
      _$_OnGetCategoryByParentId;

  List<CategoryModel> get data;
  @JsonKey(ignore: true)
  _$OnGetCategoryByParentIdCopyWith<_OnGetCategoryByParentId> get copyWith;
}

/// @nodoc
abstract class _$OnCategoryEndCopyWith<$Res> {
  factory _$OnCategoryEndCopyWith(
          _OnCategoryEnd value, $Res Function(_OnCategoryEnd) then) =
      __$OnCategoryEndCopyWithImpl<$Res>;
  $Res call({CategoryModel data});

  $CategoryModelCopyWith<$Res> get data;
}

/// @nodoc
class __$OnCategoryEndCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$OnCategoryEndCopyWith<$Res> {
  __$OnCategoryEndCopyWithImpl(
      _OnCategoryEnd _value, $Res Function(_OnCategoryEnd) _then)
      : super(_value, (v) => _then(v as _OnCategoryEnd));

  @override
  _OnCategoryEnd get _value => super._value as _OnCategoryEnd;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_OnCategoryEnd(
      data == freezed ? _value.data : data as CategoryModel,
    ));
  }

  @override
  $CategoryModelCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $CategoryModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
class _$_OnCategoryEnd implements _OnCategoryEnd {
  const _$_OnCategoryEnd(this.data) : assert(data != null);

  @override
  final CategoryModel data;

  @override
  String toString() {
    return 'CategoryState.onCategoryEnd(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnCategoryEnd &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnCategoryEndCopyWith<_OnCategoryEnd> get copyWith =>
      __$OnCategoryEndCopyWithImpl<_OnCategoryEnd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult onGetAllCategory(List<CategoryModel> data),
    @required TResult onGetCategoryByParentId(List<CategoryModel> data),
    @required TResult onCategoryEnd(CategoryModel data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return onCategoryEnd(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult onGetAllCategory(List<CategoryModel> data),
    TResult onGetCategoryByParentId(List<CategoryModel> data),
    TResult onCategoryEnd(CategoryModel data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCategoryEnd != null) {
      return onCategoryEnd(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetAllCategory(_OnGetAllCategory value),
    @required TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    @required TResult onCategoryEnd(_OnCategoryEnd value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetAllCategory != null);
    assert(onGetCategoryByParentId != null);
    assert(onCategoryEnd != null);
    return onCategoryEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetAllCategory(_OnGetAllCategory value),
    TResult onGetCategoryByParentId(_OnGetCategoryByParentId value),
    TResult onCategoryEnd(_OnCategoryEnd value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCategoryEnd != null) {
      return onCategoryEnd(this);
    }
    return orElse();
  }
}

abstract class _OnCategoryEnd implements CategoryState {
  const factory _OnCategoryEnd(CategoryModel data) = _$_OnCategoryEnd;

  CategoryModel get data;
  @JsonKey(ignore: true)
  _$OnCategoryEndCopyWith<_OnCategoryEnd> get copyWith;
}
