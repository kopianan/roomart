// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

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

  _OnConfirmPayment onConfirmPayment(String confirm) {
    return _OnConfirmPayment(
      confirm,
    );
  }

  _OnCancelOrder onCancelOrder(String message) {
    return _OnCancelOrder(
      message,
    );
  }

  _OnGetBankData onGetBankData(List<BankDataModel> listBank) {
    return _OnGetBankData(
      listBank,
    );
  }

  _OnGetHistoryTransaction onGetHistoryTransaction(
      List<TransactionDataModel> data) {
    return _OnGetHistoryTransaction(
      data,
    );
  }

  _OnGetSentHistoryTransaction onGetSentHistoryTransaction(
      List<FullTransactionDataModel> data) {
    return _OnGetSentHistoryTransaction(
      data,
    );
  }

  _OnGetAllTransaction onGetAllTransaction(
      List<FullTransactionDataModel> data) {
    return _OnGetAllTransaction(
      data,
    );
  }

  _OnGetHistoryTransactionV2 onGetHistoryTransactionV2(
      List<TransactionDataModelV2> data) {
    return _OnGetHistoryTransactionV2(
      data,
    );
  }

  _OnAddNewTransaction onAddNewTransaction(TransResponse data) {
    return _OnAddNewTransaction(
      data,
    );
  }

  _OnCheckMidtransStatus onCheckMidtransStatus(MidtransStatusDataModel data) {
    return _OnCheckMidtransStatus(
      data,
    );
  }
}

/// @nodoc
const $TransactionState = _$TransactionStateTearOff();

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
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
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
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
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
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
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TransactionState {
  const factory _Error(String error) = _$_Error;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnConfirmPaymentCopyWith<$Res> {
  factory _$OnConfirmPaymentCopyWith(
          _OnConfirmPayment value, $Res Function(_OnConfirmPayment) then) =
      __$OnConfirmPaymentCopyWithImpl<$Res>;
  $Res call({String confirm});
}

/// @nodoc
class __$OnConfirmPaymentCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnConfirmPaymentCopyWith<$Res> {
  __$OnConfirmPaymentCopyWithImpl(
      _OnConfirmPayment _value, $Res Function(_OnConfirmPayment) _then)
      : super(_value, (v) => _then(v as _OnConfirmPayment));

  @override
  _OnConfirmPayment get _value => super._value as _OnConfirmPayment;

  @override
  $Res call({
    Object? confirm = freezed,
  }) {
    return _then(_OnConfirmPayment(
      confirm == freezed
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnConfirmPayment implements _OnConfirmPayment {
  const _$_OnConfirmPayment(this.confirm);

  @override
  final String confirm;

  @override
  String toString() {
    return 'TransactionState.onConfirmPayment(confirm: $confirm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnConfirmPayment &&
            (identical(other.confirm, confirm) ||
                const DeepCollectionEquality().equals(other.confirm, confirm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(confirm);

  @JsonKey(ignore: true)
  @override
  _$OnConfirmPaymentCopyWith<_OnConfirmPayment> get copyWith =>
      __$OnConfirmPaymentCopyWithImpl<_OnConfirmPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return onConfirmPayment(confirm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onConfirmPayment != null) {
      return onConfirmPayment(confirm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return onConfirmPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onConfirmPayment != null) {
      return onConfirmPayment(this);
    }
    return orElse();
  }
}

abstract class _OnConfirmPayment implements TransactionState {
  const factory _OnConfirmPayment(String confirm) = _$_OnConfirmPayment;

  String get confirm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnConfirmPaymentCopyWith<_OnConfirmPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnCancelOrderCopyWith<$Res> {
  factory _$OnCancelOrderCopyWith(
          _OnCancelOrder value, $Res Function(_OnCancelOrder) then) =
      __$OnCancelOrderCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$OnCancelOrderCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnCancelOrderCopyWith<$Res> {
  __$OnCancelOrderCopyWithImpl(
      _OnCancelOrder _value, $Res Function(_OnCancelOrder) _then)
      : super(_value, (v) => _then(v as _OnCancelOrder));

  @override
  _OnCancelOrder get _value => super._value as _OnCancelOrder;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_OnCancelOrder(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnCancelOrder implements _OnCancelOrder {
  const _$_OnCancelOrder(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TransactionState.onCancelOrder(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnCancelOrder &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$OnCancelOrderCopyWith<_OnCancelOrder> get copyWith =>
      __$OnCancelOrderCopyWithImpl<_OnCancelOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return onCancelOrder(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onCancelOrder != null) {
      return onCancelOrder(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return onCancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onCancelOrder != null) {
      return onCancelOrder(this);
    }
    return orElse();
  }
}

abstract class _OnCancelOrder implements TransactionState {
  const factory _OnCancelOrder(String message) = _$_OnCancelOrder;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnCancelOrderCopyWith<_OnCancelOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetBankDataCopyWith<$Res> {
  factory _$OnGetBankDataCopyWith(
          _OnGetBankData value, $Res Function(_OnGetBankData) then) =
      __$OnGetBankDataCopyWithImpl<$Res>;
  $Res call({List<BankDataModel> listBank});
}

/// @nodoc
class __$OnGetBankDataCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnGetBankDataCopyWith<$Res> {
  __$OnGetBankDataCopyWithImpl(
      _OnGetBankData _value, $Res Function(_OnGetBankData) _then)
      : super(_value, (v) => _then(v as _OnGetBankData));

  @override
  _OnGetBankData get _value => super._value as _OnGetBankData;

  @override
  $Res call({
    Object? listBank = freezed,
  }) {
    return _then(_OnGetBankData(
      listBank == freezed
          ? _value.listBank
          : listBank // ignore: cast_nullable_to_non_nullable
              as List<BankDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetBankData implements _OnGetBankData {
  const _$_OnGetBankData(this.listBank);

  @override
  final List<BankDataModel> listBank;

  @override
  String toString() {
    return 'TransactionState.onGetBankData(listBank: $listBank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetBankData &&
            (identical(other.listBank, listBank) ||
                const DeepCollectionEquality()
                    .equals(other.listBank, listBank)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listBank);

  @JsonKey(ignore: true)
  @override
  _$OnGetBankDataCopyWith<_OnGetBankData> get copyWith =>
      __$OnGetBankDataCopyWithImpl<_OnGetBankData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return onGetBankData(listBank);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onGetBankData != null) {
      return onGetBankData(listBank);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return onGetBankData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onGetBankData != null) {
      return onGetBankData(this);
    }
    return orElse();
  }
}

abstract class _OnGetBankData implements TransactionState {
  const factory _OnGetBankData(List<BankDataModel> listBank) = _$_OnGetBankData;

  List<BankDataModel> get listBank => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetBankDataCopyWith<_OnGetBankData> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? data = freezed,
  }) {
    return _then(_OnGetHistoryTransaction(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransactionDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetHistoryTransaction implements _OnGetHistoryTransaction {
  const _$_OnGetHistoryTransaction(this.data);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return onGetHistoryTransaction(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onGetHistoryTransaction != null) {
      return onGetHistoryTransaction(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return onGetHistoryTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onGetHistoryTransaction != null) {
      return onGetHistoryTransaction(this);
    }
    return orElse();
  }
}

abstract class _OnGetHistoryTransaction implements TransactionState {
  const factory _OnGetHistoryTransaction(List<TransactionDataModel> data) =
      _$_OnGetHistoryTransaction;

  List<TransactionDataModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetHistoryTransactionCopyWith<_OnGetHistoryTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetSentHistoryTransactionCopyWith<$Res> {
  factory _$OnGetSentHistoryTransactionCopyWith(
          _OnGetSentHistoryTransaction value,
          $Res Function(_OnGetSentHistoryTransaction) then) =
      __$OnGetSentHistoryTransactionCopyWithImpl<$Res>;
  $Res call({List<FullTransactionDataModel> data});
}

/// @nodoc
class __$OnGetSentHistoryTransactionCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnGetSentHistoryTransactionCopyWith<$Res> {
  __$OnGetSentHistoryTransactionCopyWithImpl(
      _OnGetSentHistoryTransaction _value,
      $Res Function(_OnGetSentHistoryTransaction) _then)
      : super(_value, (v) => _then(v as _OnGetSentHistoryTransaction));

  @override
  _OnGetSentHistoryTransaction get _value =>
      super._value as _OnGetSentHistoryTransaction;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnGetSentHistoryTransaction(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FullTransactionDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetSentHistoryTransaction implements _OnGetSentHistoryTransaction {
  const _$_OnGetSentHistoryTransaction(this.data);

  @override
  final List<FullTransactionDataModel> data;

  @override
  String toString() {
    return 'TransactionState.onGetSentHistoryTransaction(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetSentHistoryTransaction &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetSentHistoryTransactionCopyWith<_OnGetSentHistoryTransaction>
      get copyWith => __$OnGetSentHistoryTransactionCopyWithImpl<
          _OnGetSentHistoryTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return onGetSentHistoryTransaction(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onGetSentHistoryTransaction != null) {
      return onGetSentHistoryTransaction(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return onGetSentHistoryTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onGetSentHistoryTransaction != null) {
      return onGetSentHistoryTransaction(this);
    }
    return orElse();
  }
}

abstract class _OnGetSentHistoryTransaction implements TransactionState {
  const factory _OnGetSentHistoryTransaction(
      List<FullTransactionDataModel> data) = _$_OnGetSentHistoryTransaction;

  List<FullTransactionDataModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetSentHistoryTransactionCopyWith<_OnGetSentHistoryTransaction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetAllTransactionCopyWith<$Res> {
  factory _$OnGetAllTransactionCopyWith(_OnGetAllTransaction value,
          $Res Function(_OnGetAllTransaction) then) =
      __$OnGetAllTransactionCopyWithImpl<$Res>;
  $Res call({List<FullTransactionDataModel> data});
}

/// @nodoc
class __$OnGetAllTransactionCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnGetAllTransactionCopyWith<$Res> {
  __$OnGetAllTransactionCopyWithImpl(
      _OnGetAllTransaction _value, $Res Function(_OnGetAllTransaction) _then)
      : super(_value, (v) => _then(v as _OnGetAllTransaction));

  @override
  _OnGetAllTransaction get _value => super._value as _OnGetAllTransaction;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnGetAllTransaction(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FullTransactionDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetAllTransaction implements _OnGetAllTransaction {
  const _$_OnGetAllTransaction(this.data);

  @override
  final List<FullTransactionDataModel> data;

  @override
  String toString() {
    return 'TransactionState.onGetAllTransaction(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetAllTransaction &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetAllTransactionCopyWith<_OnGetAllTransaction> get copyWith =>
      __$OnGetAllTransactionCopyWithImpl<_OnGetAllTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return onGetAllTransaction(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onGetAllTransaction != null) {
      return onGetAllTransaction(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return onGetAllTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onGetAllTransaction != null) {
      return onGetAllTransaction(this);
    }
    return orElse();
  }
}

abstract class _OnGetAllTransaction implements TransactionState {
  const factory _OnGetAllTransaction(List<FullTransactionDataModel> data) =
      _$_OnGetAllTransaction;

  List<FullTransactionDataModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetAllTransactionCopyWith<_OnGetAllTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetHistoryTransactionV2CopyWith<$Res> {
  factory _$OnGetHistoryTransactionV2CopyWith(_OnGetHistoryTransactionV2 value,
          $Res Function(_OnGetHistoryTransactionV2) then) =
      __$OnGetHistoryTransactionV2CopyWithImpl<$Res>;
  $Res call({List<TransactionDataModelV2> data});
}

/// @nodoc
class __$OnGetHistoryTransactionV2CopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnGetHistoryTransactionV2CopyWith<$Res> {
  __$OnGetHistoryTransactionV2CopyWithImpl(_OnGetHistoryTransactionV2 _value,
      $Res Function(_OnGetHistoryTransactionV2) _then)
      : super(_value, (v) => _then(v as _OnGetHistoryTransactionV2));

  @override
  _OnGetHistoryTransactionV2 get _value =>
      super._value as _OnGetHistoryTransactionV2;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnGetHistoryTransactionV2(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransactionDataModelV2>,
    ));
  }
}

/// @nodoc

class _$_OnGetHistoryTransactionV2 implements _OnGetHistoryTransactionV2 {
  const _$_OnGetHistoryTransactionV2(this.data);

  @override
  final List<TransactionDataModelV2> data;

  @override
  String toString() {
    return 'TransactionState.onGetHistoryTransactionV2(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetHistoryTransactionV2 &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnGetHistoryTransactionV2CopyWith<_OnGetHistoryTransactionV2>
      get copyWith =>
          __$OnGetHistoryTransactionV2CopyWithImpl<_OnGetHistoryTransactionV2>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return onGetHistoryTransactionV2(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onGetHistoryTransactionV2 != null) {
      return onGetHistoryTransactionV2(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return onGetHistoryTransactionV2(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onGetHistoryTransactionV2 != null) {
      return onGetHistoryTransactionV2(this);
    }
    return orElse();
  }
}

abstract class _OnGetHistoryTransactionV2 implements TransactionState {
  const factory _OnGetHistoryTransactionV2(List<TransactionDataModelV2> data) =
      _$_OnGetHistoryTransactionV2;

  List<TransactionDataModelV2> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetHistoryTransactionV2CopyWith<_OnGetHistoryTransactionV2>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnAddNewTransactionCopyWith<$Res> {
  factory _$OnAddNewTransactionCopyWith(_OnAddNewTransaction value,
          $Res Function(_OnAddNewTransaction) then) =
      __$OnAddNewTransactionCopyWithImpl<$Res>;
  $Res call({TransResponse data});
}

/// @nodoc
class __$OnAddNewTransactionCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnAddNewTransactionCopyWith<$Res> {
  __$OnAddNewTransactionCopyWithImpl(
      _OnAddNewTransaction _value, $Res Function(_OnAddNewTransaction) _then)
      : super(_value, (v) => _then(v as _OnAddNewTransaction));

  @override
  _OnAddNewTransaction get _value => super._value as _OnAddNewTransaction;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnAddNewTransaction(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransResponse,
    ));
  }
}

/// @nodoc

class _$_OnAddNewTransaction implements _OnAddNewTransaction {
  const _$_OnAddNewTransaction(this.data);

  @override
  final TransResponse data;

  @override
  String toString() {
    return 'TransactionState.onAddNewTransaction(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnAddNewTransaction &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnAddNewTransactionCopyWith<_OnAddNewTransaction> get copyWith =>
      __$OnAddNewTransactionCopyWithImpl<_OnAddNewTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return onAddNewTransaction(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onAddNewTransaction != null) {
      return onAddNewTransaction(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return onAddNewTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onAddNewTransaction != null) {
      return onAddNewTransaction(this);
    }
    return orElse();
  }
}

abstract class _OnAddNewTransaction implements TransactionState {
  const factory _OnAddNewTransaction(TransResponse data) =
      _$_OnAddNewTransaction;

  TransResponse get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnAddNewTransactionCopyWith<_OnAddNewTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnCheckMidtransStatusCopyWith<$Res> {
  factory _$OnCheckMidtransStatusCopyWith(_OnCheckMidtransStatus value,
          $Res Function(_OnCheckMidtransStatus) then) =
      __$OnCheckMidtransStatusCopyWithImpl<$Res>;
  $Res call({MidtransStatusDataModel data});

  $MidtransStatusDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$OnCheckMidtransStatusCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$OnCheckMidtransStatusCopyWith<$Res> {
  __$OnCheckMidtransStatusCopyWithImpl(_OnCheckMidtransStatus _value,
      $Res Function(_OnCheckMidtransStatus) _then)
      : super(_value, (v) => _then(v as _OnCheckMidtransStatus));

  @override
  _OnCheckMidtransStatus get _value => super._value as _OnCheckMidtransStatus;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OnCheckMidtransStatus(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MidtransStatusDataModel,
    ));
  }

  @override
  $MidtransStatusDataModelCopyWith<$Res> get data {
    return $MidtransStatusDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_OnCheckMidtransStatus implements _OnCheckMidtransStatus {
  const _$_OnCheckMidtransStatus(this.data);

  @override
  final MidtransStatusDataModel data;

  @override
  String toString() {
    return 'TransactionState.onCheckMidtransStatus(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnCheckMidtransStatus &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnCheckMidtransStatusCopyWith<_OnCheckMidtransStatus> get copyWith =>
      __$OnCheckMidtransStatusCopyWithImpl<_OnCheckMidtransStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String confirm) onConfirmPayment,
    required TResult Function(String message) onCancelOrder,
    required TResult Function(List<BankDataModel> listBank) onGetBankData,
    required TResult Function(List<TransactionDataModel> data)
        onGetHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetSentHistoryTransaction,
    required TResult Function(List<FullTransactionDataModel> data)
        onGetAllTransaction,
    required TResult Function(List<TransactionDataModelV2> data)
        onGetHistoryTransactionV2,
    required TResult Function(TransResponse data) onAddNewTransaction,
    required TResult Function(MidtransStatusDataModel data)
        onCheckMidtransStatus,
  }) {
    return onCheckMidtransStatus(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String confirm)? onConfirmPayment,
    TResult Function(String message)? onCancelOrder,
    TResult Function(List<BankDataModel> listBank)? onGetBankData,
    TResult Function(List<TransactionDataModel> data)? onGetHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)?
        onGetSentHistoryTransaction,
    TResult Function(List<FullTransactionDataModel> data)? onGetAllTransaction,
    TResult Function(List<TransactionDataModelV2> data)?
        onGetHistoryTransactionV2,
    TResult Function(TransResponse data)? onAddNewTransaction,
    TResult Function(MidtransStatusDataModel data)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onCheckMidtransStatus != null) {
      return onCheckMidtransStatus(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnConfirmPayment value) onConfirmPayment,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnGetBankData value) onGetBankData,
    required TResult Function(_OnGetHistoryTransaction value)
        onGetHistoryTransaction,
    required TResult Function(_OnGetSentHistoryTransaction value)
        onGetSentHistoryTransaction,
    required TResult Function(_OnGetAllTransaction value) onGetAllTransaction,
    required TResult Function(_OnGetHistoryTransactionV2 value)
        onGetHistoryTransactionV2,
    required TResult Function(_OnAddNewTransaction value) onAddNewTransaction,
    required TResult Function(_OnCheckMidtransStatus value)
        onCheckMidtransStatus,
  }) {
    return onCheckMidtransStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnConfirmPayment value)? onConfirmPayment,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnGetBankData value)? onGetBankData,
    TResult Function(_OnGetHistoryTransaction value)? onGetHistoryTransaction,
    TResult Function(_OnGetSentHistoryTransaction value)?
        onGetSentHistoryTransaction,
    TResult Function(_OnGetAllTransaction value)? onGetAllTransaction,
    TResult Function(_OnGetHistoryTransactionV2 value)?
        onGetHistoryTransactionV2,
    TResult Function(_OnAddNewTransaction value)? onAddNewTransaction,
    TResult Function(_OnCheckMidtransStatus value)? onCheckMidtransStatus,
    required TResult orElse(),
  }) {
    if (onCheckMidtransStatus != null) {
      return onCheckMidtransStatus(this);
    }
    return orElse();
  }
}

abstract class _OnCheckMidtransStatus implements TransactionState {
  const factory _OnCheckMidtransStatus(MidtransStatusDataModel data) =
      _$_OnCheckMidtransStatus;

  MidtransStatusDataModel get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnCheckMidtransStatusCopyWith<_OnCheckMidtransStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
