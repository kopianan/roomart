// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bank_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankDataModel _$BankDataModelFromJson(Map<String, dynamic> json) {
  return _BankDataModel.fromJson(json);
}

/// @nodoc
class _$BankDataModelTearOff {
  const _$BankDataModelTearOff();

  _BankDataModel call(
      {@JsonKey(name: 'BankID') int bankId = 0,
      @JsonKey(name: 'BankName') String bankName = "",
      @JsonKey(name: 'AccountNo') String accountNo = "",
      @JsonKey(name: 'AccountName') String accountName = "",
      @JsonKey(name: 'Image') int image = 0,
      @JsonKey(name: 'Status') bool status = false,
      @JsonKey(name: 'ModifiedBy') int modifiedBy = 0,
      @JsonKey(name: 'ModifiedDate') String modifiedDate = ""}) {
    return _BankDataModel(
      bankId: bankId,
      bankName: bankName,
      accountNo: accountNo,
      accountName: accountName,
      image: image,
      status: status,
      modifiedBy: modifiedBy,
      modifiedDate: modifiedDate,
    );
  }

  BankDataModel fromJson(Map<String, Object> json) {
    return BankDataModel.fromJson(json);
  }
}

/// @nodoc
const $BankDataModel = _$BankDataModelTearOff();

/// @nodoc
mixin _$BankDataModel {
  @JsonKey(name: 'BankID')
  int get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: 'BankName')
  String get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountNo')
  String get accountNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountName')
  String get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Image')
  int get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'ModifiedBy')
  int get modifiedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'ModifiedDate')
  String get modifiedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDataModelCopyWith<BankDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDataModelCopyWith<$Res> {
  factory $BankDataModelCopyWith(
          BankDataModel value, $Res Function(BankDataModel) then) =
      _$BankDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'BankID') int bankId,
      @JsonKey(name: 'BankName') String bankName,
      @JsonKey(name: 'AccountNo') String accountNo,
      @JsonKey(name: 'AccountName') String accountName,
      @JsonKey(name: 'Image') int image,
      @JsonKey(name: 'Status') bool status,
      @JsonKey(name: 'ModifiedBy') int modifiedBy,
      @JsonKey(name: 'ModifiedDate') String modifiedDate});
}

/// @nodoc
class _$BankDataModelCopyWithImpl<$Res>
    implements $BankDataModelCopyWith<$Res> {
  _$BankDataModelCopyWithImpl(this._value, this._then);

  final BankDataModel _value;
  // ignore: unused_field
  final $Res Function(BankDataModel) _then;

  @override
  $Res call({
    Object? bankId = freezed,
    Object? bankName = freezed,
    Object? accountNo = freezed,
    Object? accountName = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? modifiedBy = freezed,
    Object? modifiedDate = freezed,
  }) {
    return _then(_value.copyWith(
      bankId: bankId == freezed
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNo: accountNo == freezed
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      modifiedBy: modifiedBy == freezed
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as int,
      modifiedDate: modifiedDate == freezed
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BankDataModelCopyWith<$Res>
    implements $BankDataModelCopyWith<$Res> {
  factory _$BankDataModelCopyWith(
          _BankDataModel value, $Res Function(_BankDataModel) then) =
      __$BankDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'BankID') int bankId,
      @JsonKey(name: 'BankName') String bankName,
      @JsonKey(name: 'AccountNo') String accountNo,
      @JsonKey(name: 'AccountName') String accountName,
      @JsonKey(name: 'Image') int image,
      @JsonKey(name: 'Status') bool status,
      @JsonKey(name: 'ModifiedBy') int modifiedBy,
      @JsonKey(name: 'ModifiedDate') String modifiedDate});
}

/// @nodoc
class __$BankDataModelCopyWithImpl<$Res>
    extends _$BankDataModelCopyWithImpl<$Res>
    implements _$BankDataModelCopyWith<$Res> {
  __$BankDataModelCopyWithImpl(
      _BankDataModel _value, $Res Function(_BankDataModel) _then)
      : super(_value, (v) => _then(v as _BankDataModel));

  @override
  _BankDataModel get _value => super._value as _BankDataModel;

  @override
  $Res call({
    Object? bankId = freezed,
    Object? bankName = freezed,
    Object? accountNo = freezed,
    Object? accountName = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? modifiedBy = freezed,
    Object? modifiedDate = freezed,
  }) {
    return _then(_BankDataModel(
      bankId: bankId == freezed
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNo: accountNo == freezed
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      modifiedBy: modifiedBy == freezed
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as int,
      modifiedDate: modifiedDate == freezed
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankDataModel implements _BankDataModel {
  _$_BankDataModel(
      {@JsonKey(name: 'BankID') this.bankId = 0,
      @JsonKey(name: 'BankName') this.bankName = "",
      @JsonKey(name: 'AccountNo') this.accountNo = "",
      @JsonKey(name: 'AccountName') this.accountName = "",
      @JsonKey(name: 'Image') this.image = 0,
      @JsonKey(name: 'Status') this.status = false,
      @JsonKey(name: 'ModifiedBy') this.modifiedBy = 0,
      @JsonKey(name: 'ModifiedDate') this.modifiedDate = ""});

  factory _$_BankDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BankDataModelFromJson(json);

  @override
  @JsonKey(name: 'BankID')
  final int bankId;
  @override
  @JsonKey(name: 'BankName')
  final String bankName;
  @override
  @JsonKey(name: 'AccountNo')
  final String accountNo;
  @override
  @JsonKey(name: 'AccountName')
  final String accountName;
  @override
  @JsonKey(name: 'Image')
  final int image;
  @override
  @JsonKey(name: 'Status')
  final bool status;
  @override
  @JsonKey(name: 'ModifiedBy')
  final int modifiedBy;
  @override
  @JsonKey(name: 'ModifiedDate')
  final String modifiedDate;

  @override
  String toString() {
    return 'BankDataModel(bankId: $bankId, bankName: $bankName, accountNo: $accountNo, accountName: $accountName, image: $image, status: $status, modifiedBy: $modifiedBy, modifiedDate: $modifiedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BankDataModel &&
            (identical(other.bankId, bankId) ||
                const DeepCollectionEquality().equals(other.bankId, bankId)) &&
            (identical(other.bankName, bankName) ||
                const DeepCollectionEquality()
                    .equals(other.bankName, bankName)) &&
            (identical(other.accountNo, accountNo) ||
                const DeepCollectionEquality()
                    .equals(other.accountNo, accountNo)) &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.modifiedBy, modifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedBy, modifiedBy)) &&
            (identical(other.modifiedDate, modifiedDate) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedDate, modifiedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bankId) ^
      const DeepCollectionEquality().hash(bankName) ^
      const DeepCollectionEquality().hash(accountNo) ^
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(modifiedBy) ^
      const DeepCollectionEquality().hash(modifiedDate);

  @JsonKey(ignore: true)
  @override
  _$BankDataModelCopyWith<_BankDataModel> get copyWith =>
      __$BankDataModelCopyWithImpl<_BankDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BankDataModelToJson(this);
  }
}

abstract class _BankDataModel implements BankDataModel {
  factory _BankDataModel(
      {@JsonKey(name: 'BankID') int bankId,
      @JsonKey(name: 'BankName') String bankName,
      @JsonKey(name: 'AccountNo') String accountNo,
      @JsonKey(name: 'AccountName') String accountName,
      @JsonKey(name: 'Image') int image,
      @JsonKey(name: 'Status') bool status,
      @JsonKey(name: 'ModifiedBy') int modifiedBy,
      @JsonKey(name: 'ModifiedDate') String modifiedDate}) = _$_BankDataModel;

  factory _BankDataModel.fromJson(Map<String, dynamic> json) =
      _$_BankDataModel.fromJson;

  @override
  @JsonKey(name: 'BankID')
  int get bankId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'BankName')
  String get bankName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'AccountNo')
  String get accountNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'AccountName')
  String get accountName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Image')
  int get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Status')
  bool get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ModifiedBy')
  int get modifiedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ModifiedDate')
  String get modifiedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BankDataModelCopyWith<_BankDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
