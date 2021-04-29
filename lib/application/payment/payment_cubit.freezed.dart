// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

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
  _OnGetPaymentMethod onGetPaymentMethod(List<PaymentMethodDataModel> method) {
    return _OnGetPaymentMethod(
      method,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String error),
    @required TResult onGetPaymentMethod(List<PaymentMethodDataModel> method),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onGetPaymentMethod(List<PaymentMethodDataModel> method),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPaymentMethod(_OnGetPaymentMethod value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPaymentMethod(_OnGetPaymentMethod value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
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
    return 'PaymentState.initial()';
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
    @required TResult onGetPaymentMethod(List<PaymentMethodDataModel> method),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPaymentMethod != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onGetPaymentMethod(List<PaymentMethodDataModel> method),
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
    @required TResult onGetPaymentMethod(_OnGetPaymentMethod value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPaymentMethod != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPaymentMethod(_OnGetPaymentMethod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
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
    return 'PaymentState.loading()';
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
    @required TResult onGetPaymentMethod(List<PaymentMethodDataModel> method),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPaymentMethod != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onGetPaymentMethod(List<PaymentMethodDataModel> method),
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
    @required TResult onGetPaymentMethod(_OnGetPaymentMethod value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPaymentMethod != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPaymentMethod(_OnGetPaymentMethod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PaymentState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
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
    return 'PaymentState.error(error: $error)';
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
    @required TResult onGetPaymentMethod(List<PaymentMethodDataModel> method),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPaymentMethod != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onGetPaymentMethod(List<PaymentMethodDataModel> method),
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
    @required TResult onGetPaymentMethod(_OnGetPaymentMethod value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPaymentMethod != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPaymentMethod(_OnGetPaymentMethod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PaymentState {
  const factory _Error(String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$OnGetPaymentMethodCopyWith<$Res> {
  factory _$OnGetPaymentMethodCopyWith(
          _OnGetPaymentMethod value, $Res Function(_OnGetPaymentMethod) then) =
      __$OnGetPaymentMethodCopyWithImpl<$Res>;
  $Res call({List<PaymentMethodDataModel> method});
}

/// @nodoc
class __$OnGetPaymentMethodCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$OnGetPaymentMethodCopyWith<$Res> {
  __$OnGetPaymentMethodCopyWithImpl(
      _OnGetPaymentMethod _value, $Res Function(_OnGetPaymentMethod) _then)
      : super(_value, (v) => _then(v as _OnGetPaymentMethod));

  @override
  _OnGetPaymentMethod get _value => super._value as _OnGetPaymentMethod;

  @override
  $Res call({
    Object method = freezed,
  }) {
    return _then(_OnGetPaymentMethod(
      method == freezed
          ? _value.method
          : method as List<PaymentMethodDataModel>,
    ));
  }
}

/// @nodoc
class _$_OnGetPaymentMethod implements _OnGetPaymentMethod {
  const _$_OnGetPaymentMethod(this.method) : assert(method != null);

  @override
  final List<PaymentMethodDataModel> method;

  @override
  String toString() {
    return 'PaymentState.onGetPaymentMethod(method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetPaymentMethod &&
            (identical(other.method, method) ||
                const DeepCollectionEquality().equals(other.method, method)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(method);

  @JsonKey(ignore: true)
  @override
  _$OnGetPaymentMethodCopyWith<_OnGetPaymentMethod> get copyWith =>
      __$OnGetPaymentMethodCopyWithImpl<_OnGetPaymentMethod>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String error),
    @required TResult onGetPaymentMethod(List<PaymentMethodDataModel> method),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPaymentMethod != null);
    return onGetPaymentMethod(method);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onGetPaymentMethod(List<PaymentMethodDataModel> method),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetPaymentMethod != null) {
      return onGetPaymentMethod(method);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPaymentMethod(_OnGetPaymentMethod value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPaymentMethod != null);
    return onGetPaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPaymentMethod(_OnGetPaymentMethod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetPaymentMethod != null) {
      return onGetPaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _OnGetPaymentMethod implements PaymentState {
  const factory _OnGetPaymentMethod(List<PaymentMethodDataModel> method) =
      _$_OnGetPaymentMethod;

  List<PaymentMethodDataModel> get method;
  @JsonKey(ignore: true)
  _$OnGetPaymentMethodCopyWith<_OnGetPaymentMethod> get copyWith;
}
