// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

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
  _OnRegisterToRoomart onRegisterToRoomart(UserRoomartDataModel user) {
    return _OnRegisterToRoomart(
      user,
    );
  }

// ignore: unused_element
  _OnRegiserUser onRegiserUser(RegisterResponseModel response) {
    return _OnRegiserUser(
      response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String error),
    @required TResult onRegisterToRoomart(UserRoomartDataModel user),
    @required TResult onRegiserUser(RegisterResponseModel response),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onRegisterToRoomart(UserRoomartDataModel user),
    TResult onRegiserUser(RegisterResponseModel response),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    @required TResult onRegiserUser(_OnRegiserUser value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    TResult onRegiserUser(_OnRegiserUser value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    @required TResult onRegisterToRoomart(UserRoomartDataModel user),
    @required TResult onRegiserUser(RegisterResponseModel response),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onRegisterToRoomart != null);
    assert(onRegiserUser != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onRegisterToRoomart(UserRoomartDataModel user),
    TResult onRegiserUser(RegisterResponseModel response),
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
    @required TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    @required TResult onRegiserUser(_OnRegiserUser value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onRegisterToRoomart != null);
    assert(onRegiserUser != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    TResult onRegiserUser(_OnRegiserUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.loading()';
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
    @required TResult onRegisterToRoomart(UserRoomartDataModel user),
    @required TResult onRegiserUser(RegisterResponseModel response),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onRegisterToRoomart != null);
    assert(onRegiserUser != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onRegisterToRoomart(UserRoomartDataModel user),
    TResult onRegiserUser(RegisterResponseModel response),
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
    @required TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    @required TResult onRegiserUser(_OnRegiserUser value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onRegisterToRoomart != null);
    assert(onRegiserUser != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    TResult onRegiserUser(_OnRegiserUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.error(error: $error)';
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
    @required TResult onRegisterToRoomart(UserRoomartDataModel user),
    @required TResult onRegiserUser(RegisterResponseModel response),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onRegisterToRoomart != null);
    assert(onRegiserUser != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onRegisterToRoomart(UserRoomartDataModel user),
    TResult onRegiserUser(RegisterResponseModel response),
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
    @required TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    @required TResult onRegiserUser(_OnRegiserUser value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onRegisterToRoomart != null);
    assert(onRegiserUser != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    TResult onRegiserUser(_OnRegiserUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$OnRegisterToRoomartCopyWith<$Res> {
  factory _$OnRegisterToRoomartCopyWith(_OnRegisterToRoomart value,
          $Res Function(_OnRegisterToRoomart) then) =
      __$OnRegisterToRoomartCopyWithImpl<$Res>;
  $Res call({UserRoomartDataModel user});
}

/// @nodoc
class __$OnRegisterToRoomartCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnRegisterToRoomartCopyWith<$Res> {
  __$OnRegisterToRoomartCopyWithImpl(
      _OnRegisterToRoomart _value, $Res Function(_OnRegisterToRoomart) _then)
      : super(_value, (v) => _then(v as _OnRegisterToRoomart));

  @override
  _OnRegisterToRoomart get _value => super._value as _OnRegisterToRoomart;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_OnRegisterToRoomart(
      user == freezed ? _value.user : user as UserRoomartDataModel,
    ));
  }
}

/// @nodoc
class _$_OnRegisterToRoomart implements _OnRegisterToRoomart {
  const _$_OnRegisterToRoomart(this.user) : assert(user != null);

  @override
  final UserRoomartDataModel user;

  @override
  String toString() {
    return 'AuthState.onRegisterToRoomart(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnRegisterToRoomart &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$OnRegisterToRoomartCopyWith<_OnRegisterToRoomart> get copyWith =>
      __$OnRegisterToRoomartCopyWithImpl<_OnRegisterToRoomart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String error),
    @required TResult onRegisterToRoomart(UserRoomartDataModel user),
    @required TResult onRegiserUser(RegisterResponseModel response),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onRegisterToRoomart != null);
    assert(onRegiserUser != null);
    return onRegisterToRoomart(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onRegisterToRoomart(UserRoomartDataModel user),
    TResult onRegiserUser(RegisterResponseModel response),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRegisterToRoomart != null) {
      return onRegisterToRoomart(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    @required TResult onRegiserUser(_OnRegiserUser value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onRegisterToRoomart != null);
    assert(onRegiserUser != null);
    return onRegisterToRoomart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    TResult onRegiserUser(_OnRegiserUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRegisterToRoomart != null) {
      return onRegisterToRoomart(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterToRoomart implements AuthState {
  const factory _OnRegisterToRoomart(UserRoomartDataModel user) =
      _$_OnRegisterToRoomart;

  UserRoomartDataModel get user;
  @JsonKey(ignore: true)
  _$OnRegisterToRoomartCopyWith<_OnRegisterToRoomart> get copyWith;
}

/// @nodoc
abstract class _$OnRegiserUserCopyWith<$Res> {
  factory _$OnRegiserUserCopyWith(
          _OnRegiserUser value, $Res Function(_OnRegiserUser) then) =
      __$OnRegiserUserCopyWithImpl<$Res>;
  $Res call({RegisterResponseModel response});
}

/// @nodoc
class __$OnRegiserUserCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnRegiserUserCopyWith<$Res> {
  __$OnRegiserUserCopyWithImpl(
      _OnRegiserUser _value, $Res Function(_OnRegiserUser) _then)
      : super(_value, (v) => _then(v as _OnRegiserUser));

  @override
  _OnRegiserUser get _value => super._value as _OnRegiserUser;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(_OnRegiserUser(
      response == freezed ? _value.response : response as RegisterResponseModel,
    ));
  }
}

/// @nodoc
class _$_OnRegiserUser implements _OnRegiserUser {
  const _$_OnRegiserUser(this.response) : assert(response != null);

  @override
  final RegisterResponseModel response;

  @override
  String toString() {
    return 'AuthState.onRegiserUser(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnRegiserUser &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$OnRegiserUserCopyWith<_OnRegiserUser> get copyWith =>
      __$OnRegiserUserCopyWithImpl<_OnRegiserUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String error),
    @required TResult onRegisterToRoomart(UserRoomartDataModel user),
    @required TResult onRegiserUser(RegisterResponseModel response),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onRegisterToRoomart != null);
    assert(onRegiserUser != null);
    return onRegiserUser(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String error),
    TResult onRegisterToRoomart(UserRoomartDataModel user),
    TResult onRegiserUser(RegisterResponseModel response),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRegiserUser != null) {
      return onRegiserUser(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    @required TResult onRegiserUser(_OnRegiserUser value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onRegisterToRoomart != null);
    assert(onRegiserUser != null);
    return onRegiserUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onRegisterToRoomart(_OnRegisterToRoomart value),
    TResult onRegiserUser(_OnRegiserUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRegiserUser != null) {
      return onRegiserUser(this);
    }
    return orElse();
  }
}

abstract class _OnRegiserUser implements AuthState {
  const factory _OnRegiserUser(RegisterResponseModel response) =
      _$_OnRegiserUser;

  RegisterResponseModel get response;
  @JsonKey(ignore: true)
  _$OnRegiserUserCopyWith<_OnRegiserUser> get copyWith;
}
