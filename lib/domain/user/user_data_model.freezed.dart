// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
class _$UserDataModelTearOff {
  const _$UserDataModelTearOff();

// ignore: unused_element
  _UserDataModel call(
      {@JsonKey(name: "userId", defaultValue: "") String userId,
      @JsonKey(name: "error", defaultValue: 0) int error,
      @JsonKey(name: "parentId", defaultValue: "") String parentId,
      @JsonKey(name: "userName", defaultValue: "") String userName,
      @JsonKey(name: "message", defaultValue: "") String messageError,
      @JsonKey(name: "email", defaultValue: "") String email,
      @JsonKey(name: "phone", defaultValue: "") String phone,
      @JsonKey(name: "password", defaultValue: "") String password,
      @JsonKey(name: "fullName", defaultValue: "") String fullName,
      @JsonKey(name: "typeIds", defaultValue: "") String typeIds,
      @JsonKey(name: "status", defaultValue: 0) double status,
      @JsonKey(name: "address", defaultValue: "") String address,
      @JsonKey(name: "shipTo1", defaultValue: "") String shipTo1,
      @JsonKey(name: "shipTo2", defaultValue: "") String shipTo2,
      @JsonKey(name: "country", defaultValue: "") String country,
      @JsonKey(name: "province", defaultValue: "") String province,
      @JsonKey(name: "city", defaultValue: "") String city,
      @JsonKey(name: "district", defaultValue: "") String district,
      @JsonKey(name: "village", defaultValue: "") String village,
      @JsonKey(name: "terrId1", defaultValue: "") String terrId1,
      @JsonKey(name: "terrId2", defaultValue: "") String terrId2,
      @JsonKey(name: "terrId3", defaultValue: "") String terrId3,
      @JsonKey(name: "terrId4", defaultValue: "") String terrId4,
      @JsonKey(name: "longitudes", defaultValue: 0) double longitudes,
      @JsonKey(name: "latitudes", defaultValue: 0) double latitudes,
      @JsonKey(name: "fbToken", defaultValue: "") String fbToken,
      @JsonKey(name: "googleToken", defaultValue: "") String googleToken,
      @JsonKey(name: "msgToken", defaultValue: "") String msgToken,
      @JsonKey(name: "otherToken", defaultValue: "") String otherToken,
      @JsonKey(name: "alreadyInSave", defaultValue: false) bool alreadyInSave,
      @JsonKey(name: "isNew", defaultValue: false) bool isNew,
      @JsonKey(name: "modified", defaultValue: false) bool modified}) {
    return _UserDataModel(
      userId: userId,
      error: error,
      parentId: parentId,
      userName: userName,
      messageError: messageError,
      email: email,
      phone: phone,
      password: password,
      fullName: fullName,
      typeIds: typeIds,
      status: status,
      address: address,
      shipTo1: shipTo1,
      shipTo2: shipTo2,
      country: country,
      province: province,
      city: city,
      district: district,
      village: village,
      terrId1: terrId1,
      terrId2: terrId2,
      terrId3: terrId3,
      terrId4: terrId4,
      longitudes: longitudes,
      latitudes: latitudes,
      fbToken: fbToken,
      googleToken: googleToken,
      msgToken: msgToken,
      otherToken: otherToken,
      alreadyInSave: alreadyInSave,
      isNew: isNew,
      modified: modified,
    );
  }

// ignore: unused_element
  UserDataModel fromJson(Map<String, Object> json) {
    return UserDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDataModel = _$UserDataModelTearOff();

/// @nodoc
mixin _$UserDataModel {
  @JsonKey(name: "userId", defaultValue: "")
  String get userId;
  @JsonKey(name: "error", defaultValue: 0)
  int get error;
  @JsonKey(name: "parentId", defaultValue: "")
  String get parentId;
  @JsonKey(name: "userName", defaultValue: "")
  String get userName;
  @JsonKey(name: "message", defaultValue: "")
  String get messageError;
  @JsonKey(name: "email", defaultValue: "")
  String get email;
  @JsonKey(name: "phone", defaultValue: "")
  String get phone;
  @JsonKey(name: "password", defaultValue: "")
  String get password;
  @JsonKey(name: "fullName", defaultValue: "")
  String get fullName;
  @JsonKey(name: "typeIds", defaultValue: "")
  String get typeIds;
  @JsonKey(name: "status", defaultValue: 0)
  double get status;
  @JsonKey(name: "address", defaultValue: "")
  String get address;
  @JsonKey(name: "shipTo1", defaultValue: "")
  String get shipTo1;
  @JsonKey(name: "shipTo2", defaultValue: "")
  String get shipTo2;
  @JsonKey(name: "country", defaultValue: "")
  String get country;
  @JsonKey(name: "province", defaultValue: "")
  String get province;
  @JsonKey(name: "city", defaultValue: "")
  String get city;
  @JsonKey(name: "district", defaultValue: "")
  String get district;
  @JsonKey(name: "village", defaultValue: "")
  String get village;
  @JsonKey(name: "terrId1", defaultValue: "")
  String get terrId1;
  @JsonKey(name: "terrId2", defaultValue: "")
  String get terrId2;
  @JsonKey(name: "terrId3", defaultValue: "")
  String get terrId3;
  @JsonKey(name: "terrId4", defaultValue: "")
  String get terrId4;
  @JsonKey(name: "longitudes", defaultValue: 0)
  double get longitudes;
  @JsonKey(name: "latitudes", defaultValue: 0)
  double get latitudes;
  @JsonKey(name: "fbToken", defaultValue: "")
  String get fbToken;
  @JsonKey(name: "googleToken", defaultValue: "")
  String get googleToken;
  @JsonKey(name: "msgToken", defaultValue: "")
  String get msgToken;
  @JsonKey(name: "otherToken", defaultValue: "")
  String get otherToken;
  @JsonKey(name: "alreadyInSave", defaultValue: false)
  bool get alreadyInSave;
  @JsonKey(name: "isNew", defaultValue: false)
  bool get isNew;
  @JsonKey(name: "modified", defaultValue: false)
  bool get modified;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "userId", defaultValue: "") String userId,
      @JsonKey(name: "error", defaultValue: 0) int error,
      @JsonKey(name: "parentId", defaultValue: "") String parentId,
      @JsonKey(name: "userName", defaultValue: "") String userName,
      @JsonKey(name: "message", defaultValue: "") String messageError,
      @JsonKey(name: "email", defaultValue: "") String email,
      @JsonKey(name: "phone", defaultValue: "") String phone,
      @JsonKey(name: "password", defaultValue: "") String password,
      @JsonKey(name: "fullName", defaultValue: "") String fullName,
      @JsonKey(name: "typeIds", defaultValue: "") String typeIds,
      @JsonKey(name: "status", defaultValue: 0) double status,
      @JsonKey(name: "address", defaultValue: "") String address,
      @JsonKey(name: "shipTo1", defaultValue: "") String shipTo1,
      @JsonKey(name: "shipTo2", defaultValue: "") String shipTo2,
      @JsonKey(name: "country", defaultValue: "") String country,
      @JsonKey(name: "province", defaultValue: "") String province,
      @JsonKey(name: "city", defaultValue: "") String city,
      @JsonKey(name: "district", defaultValue: "") String district,
      @JsonKey(name: "village", defaultValue: "") String village,
      @JsonKey(name: "terrId1", defaultValue: "") String terrId1,
      @JsonKey(name: "terrId2", defaultValue: "") String terrId2,
      @JsonKey(name: "terrId3", defaultValue: "") String terrId3,
      @JsonKey(name: "terrId4", defaultValue: "") String terrId4,
      @JsonKey(name: "longitudes", defaultValue: 0) double longitudes,
      @JsonKey(name: "latitudes", defaultValue: 0) double latitudes,
      @JsonKey(name: "fbToken", defaultValue: "") String fbToken,
      @JsonKey(name: "googleToken", defaultValue: "") String googleToken,
      @JsonKey(name: "msgToken", defaultValue: "") String msgToken,
      @JsonKey(name: "otherToken", defaultValue: "") String otherToken,
      @JsonKey(name: "alreadyInSave", defaultValue: false) bool alreadyInSave,
      @JsonKey(name: "isNew", defaultValue: false) bool isNew,
      @JsonKey(name: "modified", defaultValue: false) bool modified});
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  final UserDataModel _value;
  // ignore: unused_field
  final $Res Function(UserDataModel) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object error = freezed,
    Object parentId = freezed,
    Object userName = freezed,
    Object messageError = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object password = freezed,
    Object fullName = freezed,
    Object typeIds = freezed,
    Object status = freezed,
    Object address = freezed,
    Object shipTo1 = freezed,
    Object shipTo2 = freezed,
    Object country = freezed,
    Object province = freezed,
    Object city = freezed,
    Object district = freezed,
    Object village = freezed,
    Object terrId1 = freezed,
    Object terrId2 = freezed,
    Object terrId3 = freezed,
    Object terrId4 = freezed,
    Object longitudes = freezed,
    Object latitudes = freezed,
    Object fbToken = freezed,
    Object googleToken = freezed,
    Object msgToken = freezed,
    Object otherToken = freezed,
    Object alreadyInSave = freezed,
    Object isNew = freezed,
    Object modified = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
      error: error == freezed ? _value.error : error as int,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      messageError: messageError == freezed
          ? _value.messageError
          : messageError as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      password: password == freezed ? _value.password : password as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      typeIds: typeIds == freezed ? _value.typeIds : typeIds as String,
      status: status == freezed ? _value.status : status as double,
      address: address == freezed ? _value.address : address as String,
      shipTo1: shipTo1 == freezed ? _value.shipTo1 : shipTo1 as String,
      shipTo2: shipTo2 == freezed ? _value.shipTo2 : shipTo2 as String,
      country: country == freezed ? _value.country : country as String,
      province: province == freezed ? _value.province : province as String,
      city: city == freezed ? _value.city : city as String,
      district: district == freezed ? _value.district : district as String,
      village: village == freezed ? _value.village : village as String,
      terrId1: terrId1 == freezed ? _value.terrId1 : terrId1 as String,
      terrId2: terrId2 == freezed ? _value.terrId2 : terrId2 as String,
      terrId3: terrId3 == freezed ? _value.terrId3 : terrId3 as String,
      terrId4: terrId4 == freezed ? _value.terrId4 : terrId4 as String,
      longitudes:
          longitudes == freezed ? _value.longitudes : longitudes as double,
      latitudes: latitudes == freezed ? _value.latitudes : latitudes as double,
      fbToken: fbToken == freezed ? _value.fbToken : fbToken as String,
      googleToken:
          googleToken == freezed ? _value.googleToken : googleToken as String,
      msgToken: msgToken == freezed ? _value.msgToken : msgToken as String,
      otherToken:
          otherToken == freezed ? _value.otherToken : otherToken as String,
      alreadyInSave: alreadyInSave == freezed
          ? _value.alreadyInSave
          : alreadyInSave as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
      modified: modified == freezed ? _value.modified : modified as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserDataModelCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$UserDataModelCopyWith(
          _UserDataModel value, $Res Function(_UserDataModel) then) =
      __$UserDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "userId", defaultValue: "") String userId,
      @JsonKey(name: "error", defaultValue: 0) int error,
      @JsonKey(name: "parentId", defaultValue: "") String parentId,
      @JsonKey(name: "userName", defaultValue: "") String userName,
      @JsonKey(name: "message", defaultValue: "") String messageError,
      @JsonKey(name: "email", defaultValue: "") String email,
      @JsonKey(name: "phone", defaultValue: "") String phone,
      @JsonKey(name: "password", defaultValue: "") String password,
      @JsonKey(name: "fullName", defaultValue: "") String fullName,
      @JsonKey(name: "typeIds", defaultValue: "") String typeIds,
      @JsonKey(name: "status", defaultValue: 0) double status,
      @JsonKey(name: "address", defaultValue: "") String address,
      @JsonKey(name: "shipTo1", defaultValue: "") String shipTo1,
      @JsonKey(name: "shipTo2", defaultValue: "") String shipTo2,
      @JsonKey(name: "country", defaultValue: "") String country,
      @JsonKey(name: "province", defaultValue: "") String province,
      @JsonKey(name: "city", defaultValue: "") String city,
      @JsonKey(name: "district", defaultValue: "") String district,
      @JsonKey(name: "village", defaultValue: "") String village,
      @JsonKey(name: "terrId1", defaultValue: "") String terrId1,
      @JsonKey(name: "terrId2", defaultValue: "") String terrId2,
      @JsonKey(name: "terrId3", defaultValue: "") String terrId3,
      @JsonKey(name: "terrId4", defaultValue: "") String terrId4,
      @JsonKey(name: "longitudes", defaultValue: 0) double longitudes,
      @JsonKey(name: "latitudes", defaultValue: 0) double latitudes,
      @JsonKey(name: "fbToken", defaultValue: "") String fbToken,
      @JsonKey(name: "googleToken", defaultValue: "") String googleToken,
      @JsonKey(name: "msgToken", defaultValue: "") String msgToken,
      @JsonKey(name: "otherToken", defaultValue: "") String otherToken,
      @JsonKey(name: "alreadyInSave", defaultValue: false) bool alreadyInSave,
      @JsonKey(name: "isNew", defaultValue: false) bool isNew,
      @JsonKey(name: "modified", defaultValue: false) bool modified});
}

/// @nodoc
class __$UserDataModelCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res>
    implements _$UserDataModelCopyWith<$Res> {
  __$UserDataModelCopyWithImpl(
      _UserDataModel _value, $Res Function(_UserDataModel) _then)
      : super(_value, (v) => _then(v as _UserDataModel));

  @override
  _UserDataModel get _value => super._value as _UserDataModel;

  @override
  $Res call({
    Object userId = freezed,
    Object error = freezed,
    Object parentId = freezed,
    Object userName = freezed,
    Object messageError = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object password = freezed,
    Object fullName = freezed,
    Object typeIds = freezed,
    Object status = freezed,
    Object address = freezed,
    Object shipTo1 = freezed,
    Object shipTo2 = freezed,
    Object country = freezed,
    Object province = freezed,
    Object city = freezed,
    Object district = freezed,
    Object village = freezed,
    Object terrId1 = freezed,
    Object terrId2 = freezed,
    Object terrId3 = freezed,
    Object terrId4 = freezed,
    Object longitudes = freezed,
    Object latitudes = freezed,
    Object fbToken = freezed,
    Object googleToken = freezed,
    Object msgToken = freezed,
    Object otherToken = freezed,
    Object alreadyInSave = freezed,
    Object isNew = freezed,
    Object modified = freezed,
  }) {
    return _then(_UserDataModel(
      userId: userId == freezed ? _value.userId : userId as String,
      error: error == freezed ? _value.error : error as int,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      messageError: messageError == freezed
          ? _value.messageError
          : messageError as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      password: password == freezed ? _value.password : password as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      typeIds: typeIds == freezed ? _value.typeIds : typeIds as String,
      status: status == freezed ? _value.status : status as double,
      address: address == freezed ? _value.address : address as String,
      shipTo1: shipTo1 == freezed ? _value.shipTo1 : shipTo1 as String,
      shipTo2: shipTo2 == freezed ? _value.shipTo2 : shipTo2 as String,
      country: country == freezed ? _value.country : country as String,
      province: province == freezed ? _value.province : province as String,
      city: city == freezed ? _value.city : city as String,
      district: district == freezed ? _value.district : district as String,
      village: village == freezed ? _value.village : village as String,
      terrId1: terrId1 == freezed ? _value.terrId1 : terrId1 as String,
      terrId2: terrId2 == freezed ? _value.terrId2 : terrId2 as String,
      terrId3: terrId3 == freezed ? _value.terrId3 : terrId3 as String,
      terrId4: terrId4 == freezed ? _value.terrId4 : terrId4 as String,
      longitudes:
          longitudes == freezed ? _value.longitudes : longitudes as double,
      latitudes: latitudes == freezed ? _value.latitudes : latitudes as double,
      fbToken: fbToken == freezed ? _value.fbToken : fbToken as String,
      googleToken:
          googleToken == freezed ? _value.googleToken : googleToken as String,
      msgToken: msgToken == freezed ? _value.msgToken : msgToken as String,
      otherToken:
          otherToken == freezed ? _value.otherToken : otherToken as String,
      alreadyInSave: alreadyInSave == freezed
          ? _value.alreadyInSave
          : alreadyInSave as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
      modified: modified == freezed ? _value.modified : modified as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDataModel implements _UserDataModel {
  _$_UserDataModel(
      {@JsonKey(name: "userId", defaultValue: "") this.userId,
      @JsonKey(name: "error", defaultValue: 0) this.error,
      @JsonKey(name: "parentId", defaultValue: "") this.parentId,
      @JsonKey(name: "userName", defaultValue: "") this.userName,
      @JsonKey(name: "message", defaultValue: "") this.messageError,
      @JsonKey(name: "email", defaultValue: "") this.email,
      @JsonKey(name: "phone", defaultValue: "") this.phone,
      @JsonKey(name: "password", defaultValue: "") this.password,
      @JsonKey(name: "fullName", defaultValue: "") this.fullName,
      @JsonKey(name: "typeIds", defaultValue: "") this.typeIds,
      @JsonKey(name: "status", defaultValue: 0) this.status,
      @JsonKey(name: "address", defaultValue: "") this.address,
      @JsonKey(name: "shipTo1", defaultValue: "") this.shipTo1,
      @JsonKey(name: "shipTo2", defaultValue: "") this.shipTo2,
      @JsonKey(name: "country", defaultValue: "") this.country,
      @JsonKey(name: "province", defaultValue: "") this.province,
      @JsonKey(name: "city", defaultValue: "") this.city,
      @JsonKey(name: "district", defaultValue: "") this.district,
      @JsonKey(name: "village", defaultValue: "") this.village,
      @JsonKey(name: "terrId1", defaultValue: "") this.terrId1,
      @JsonKey(name: "terrId2", defaultValue: "") this.terrId2,
      @JsonKey(name: "terrId3", defaultValue: "") this.terrId3,
      @JsonKey(name: "terrId4", defaultValue: "") this.terrId4,
      @JsonKey(name: "longitudes", defaultValue: 0) this.longitudes,
      @JsonKey(name: "latitudes", defaultValue: 0) this.latitudes,
      @JsonKey(name: "fbToken", defaultValue: "") this.fbToken,
      @JsonKey(name: "googleToken", defaultValue: "") this.googleToken,
      @JsonKey(name: "msgToken", defaultValue: "") this.msgToken,
      @JsonKey(name: "otherToken", defaultValue: "") this.otherToken,
      @JsonKey(name: "alreadyInSave", defaultValue: false) this.alreadyInSave,
      @JsonKey(name: "isNew", defaultValue: false) this.isNew,
      @JsonKey(name: "modified", defaultValue: false) this.modified});

  factory _$_UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataModelFromJson(json);

  @override
  @JsonKey(name: "userId", defaultValue: "")
  final String userId;
  @override
  @JsonKey(name: "error", defaultValue: 0)
  final int error;
  @override
  @JsonKey(name: "parentId", defaultValue: "")
  final String parentId;
  @override
  @JsonKey(name: "userName", defaultValue: "")
  final String userName;
  @override
  @JsonKey(name: "message", defaultValue: "")
  final String messageError;
  @override
  @JsonKey(name: "email", defaultValue: "")
  final String email;
  @override
  @JsonKey(name: "phone", defaultValue: "")
  final String phone;
  @override
  @JsonKey(name: "password", defaultValue: "")
  final String password;
  @override
  @JsonKey(name: "fullName", defaultValue: "")
  final String fullName;
  @override
  @JsonKey(name: "typeIds", defaultValue: "")
  final String typeIds;
  @override
  @JsonKey(name: "status", defaultValue: 0)
  final double status;
  @override
  @JsonKey(name: "address", defaultValue: "")
  final String address;
  @override
  @JsonKey(name: "shipTo1", defaultValue: "")
  final String shipTo1;
  @override
  @JsonKey(name: "shipTo2", defaultValue: "")
  final String shipTo2;
  @override
  @JsonKey(name: "country", defaultValue: "")
  final String country;
  @override
  @JsonKey(name: "province", defaultValue: "")
  final String province;
  @override
  @JsonKey(name: "city", defaultValue: "")
  final String city;
  @override
  @JsonKey(name: "district", defaultValue: "")
  final String district;
  @override
  @JsonKey(name: "village", defaultValue: "")
  final String village;
  @override
  @JsonKey(name: "terrId1", defaultValue: "")
  final String terrId1;
  @override
  @JsonKey(name: "terrId2", defaultValue: "")
  final String terrId2;
  @override
  @JsonKey(name: "terrId3", defaultValue: "")
  final String terrId3;
  @override
  @JsonKey(name: "terrId4", defaultValue: "")
  final String terrId4;
  @override
  @JsonKey(name: "longitudes", defaultValue: 0)
  final double longitudes;
  @override
  @JsonKey(name: "latitudes", defaultValue: 0)
  final double latitudes;
  @override
  @JsonKey(name: "fbToken", defaultValue: "")
  final String fbToken;
  @override
  @JsonKey(name: "googleToken", defaultValue: "")
  final String googleToken;
  @override
  @JsonKey(name: "msgToken", defaultValue: "")
  final String msgToken;
  @override
  @JsonKey(name: "otherToken", defaultValue: "")
  final String otherToken;
  @override
  @JsonKey(name: "alreadyInSave", defaultValue: false)
  final bool alreadyInSave;
  @override
  @JsonKey(name: "isNew", defaultValue: false)
  final bool isNew;
  @override
  @JsonKey(name: "modified", defaultValue: false)
  final bool modified;

  @override
  String toString() {
    return 'UserDataModel(userId: $userId, error: $error, parentId: $parentId, userName: $userName, messageError: $messageError, email: $email, phone: $phone, password: $password, fullName: $fullName, typeIds: $typeIds, status: $status, address: $address, shipTo1: $shipTo1, shipTo2: $shipTo2, country: $country, province: $province, city: $city, district: $district, village: $village, terrId1: $terrId1, terrId2: $terrId2, terrId3: $terrId3, terrId4: $terrId4, longitudes: $longitudes, latitudes: $latitudes, fbToken: $fbToken, googleToken: $googleToken, msgToken: $msgToken, otherToken: $otherToken, alreadyInSave: $alreadyInSave, isNew: $isNew, modified: $modified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDataModel &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.messageError, messageError) ||
                const DeepCollectionEquality()
                    .equals(other.messageError, messageError)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.typeIds, typeIds) ||
                const DeepCollectionEquality()
                    .equals(other.typeIds, typeIds)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.shipTo1, shipTo1) ||
                const DeepCollectionEquality()
                    .equals(other.shipTo1, shipTo1)) &&
            (identical(other.shipTo2, shipTo2) ||
                const DeepCollectionEquality()
                    .equals(other.shipTo2, shipTo2)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.village, village) ||
                const DeepCollectionEquality()
                    .equals(other.village, village)) &&
            (identical(other.terrId1, terrId1) ||
                const DeepCollectionEquality()
                    .equals(other.terrId1, terrId1)) &&
            (identical(other.terrId2, terrId2) ||
                const DeepCollectionEquality()
                    .equals(other.terrId2, terrId2)) &&
            (identical(other.terrId3, terrId3) ||
                const DeepCollectionEquality()
                    .equals(other.terrId3, terrId3)) &&
            (identical(other.terrId4, terrId4) ||
                const DeepCollectionEquality()
                    .equals(other.terrId4, terrId4)) &&
            (identical(other.longitudes, longitudes) ||
                const DeepCollectionEquality()
                    .equals(other.longitudes, longitudes)) &&
            (identical(other.latitudes, latitudes) ||
                const DeepCollectionEquality().equals(other.latitudes, latitudes)) &&
            (identical(other.fbToken, fbToken) || const DeepCollectionEquality().equals(other.fbToken, fbToken)) &&
            (identical(other.googleToken, googleToken) || const DeepCollectionEquality().equals(other.googleToken, googleToken)) &&
            (identical(other.msgToken, msgToken) || const DeepCollectionEquality().equals(other.msgToken, msgToken)) &&
            (identical(other.otherToken, otherToken) || const DeepCollectionEquality().equals(other.otherToken, otherToken)) &&
            (identical(other.alreadyInSave, alreadyInSave) || const DeepCollectionEquality().equals(other.alreadyInSave, alreadyInSave)) &&
            (identical(other.isNew, isNew) || const DeepCollectionEquality().equals(other.isNew, isNew)) &&
            (identical(other.modified, modified) || const DeepCollectionEquality().equals(other.modified, modified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(messageError) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(typeIds) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(shipTo1) ^
      const DeepCollectionEquality().hash(shipTo2) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(village) ^
      const DeepCollectionEquality().hash(terrId1) ^
      const DeepCollectionEquality().hash(terrId2) ^
      const DeepCollectionEquality().hash(terrId3) ^
      const DeepCollectionEquality().hash(terrId4) ^
      const DeepCollectionEquality().hash(longitudes) ^
      const DeepCollectionEquality().hash(latitudes) ^
      const DeepCollectionEquality().hash(fbToken) ^
      const DeepCollectionEquality().hash(googleToken) ^
      const DeepCollectionEquality().hash(msgToken) ^
      const DeepCollectionEquality().hash(otherToken) ^
      const DeepCollectionEquality().hash(alreadyInSave) ^
      const DeepCollectionEquality().hash(isNew) ^
      const DeepCollectionEquality().hash(modified);

  @JsonKey(ignore: true)
  @override
  _$UserDataModelCopyWith<_UserDataModel> get copyWith =>
      __$UserDataModelCopyWithImpl<_UserDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataModelToJson(this);
  }
}

abstract class _UserDataModel implements UserDataModel {
  factory _UserDataModel(
      {@JsonKey(name: "userId", defaultValue: "")
          String userId,
      @JsonKey(name: "error", defaultValue: 0)
          int error,
      @JsonKey(name: "parentId", defaultValue: "")
          String parentId,
      @JsonKey(name: "userName", defaultValue: "")
          String userName,
      @JsonKey(name: "message", defaultValue: "")
          String messageError,
      @JsonKey(name: "email", defaultValue: "")
          String email,
      @JsonKey(name: "phone", defaultValue: "")
          String phone,
      @JsonKey(name: "password", defaultValue: "")
          String password,
      @JsonKey(name: "fullName", defaultValue: "")
          String fullName,
      @JsonKey(name: "typeIds", defaultValue: "")
          String typeIds,
      @JsonKey(name: "status", defaultValue: 0)
          double status,
      @JsonKey(name: "address", defaultValue: "")
          String address,
      @JsonKey(name: "shipTo1", defaultValue: "")
          String shipTo1,
      @JsonKey(name: "shipTo2", defaultValue: "")
          String shipTo2,
      @JsonKey(name: "country", defaultValue: "")
          String country,
      @JsonKey(name: "province", defaultValue: "")
          String province,
      @JsonKey(name: "city", defaultValue: "")
          String city,
      @JsonKey(name: "district", defaultValue: "")
          String district,
      @JsonKey(name: "village", defaultValue: "")
          String village,
      @JsonKey(name: "terrId1", defaultValue: "")
          String terrId1,
      @JsonKey(name: "terrId2", defaultValue: "")
          String terrId2,
      @JsonKey(name: "terrId3", defaultValue: "")
          String terrId3,
      @JsonKey(name: "terrId4", defaultValue: "")
          String terrId4,
      @JsonKey(name: "longitudes", defaultValue: 0)
          double longitudes,
      @JsonKey(name: "latitudes", defaultValue: 0)
          double latitudes,
      @JsonKey(name: "fbToken", defaultValue: "")
          String fbToken,
      @JsonKey(name: "googleToken", defaultValue: "")
          String googleToken,
      @JsonKey(name: "msgToken", defaultValue: "")
          String msgToken,
      @JsonKey(name: "otherToken", defaultValue: "")
          String otherToken,
      @JsonKey(name: "alreadyInSave", defaultValue: false)
          bool alreadyInSave,
      @JsonKey(name: "isNew", defaultValue: false)
          bool isNew,
      @JsonKey(name: "modified", defaultValue: false)
          bool modified}) = _$_UserDataModel;

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$_UserDataModel.fromJson;

  @override
  @JsonKey(name: "userId", defaultValue: "")
  String get userId;
  @override
  @JsonKey(name: "error", defaultValue: 0)
  int get error;
  @override
  @JsonKey(name: "parentId", defaultValue: "")
  String get parentId;
  @override
  @JsonKey(name: "userName", defaultValue: "")
  String get userName;
  @override
  @JsonKey(name: "message", defaultValue: "")
  String get messageError;
  @override
  @JsonKey(name: "email", defaultValue: "")
  String get email;
  @override
  @JsonKey(name: "phone", defaultValue: "")
  String get phone;
  @override
  @JsonKey(name: "password", defaultValue: "")
  String get password;
  @override
  @JsonKey(name: "fullName", defaultValue: "")
  String get fullName;
  @override
  @JsonKey(name: "typeIds", defaultValue: "")
  String get typeIds;
  @override
  @JsonKey(name: "status", defaultValue: 0)
  double get status;
  @override
  @JsonKey(name: "address", defaultValue: "")
  String get address;
  @override
  @JsonKey(name: "shipTo1", defaultValue: "")
  String get shipTo1;
  @override
  @JsonKey(name: "shipTo2", defaultValue: "")
  String get shipTo2;
  @override
  @JsonKey(name: "country", defaultValue: "")
  String get country;
  @override
  @JsonKey(name: "province", defaultValue: "")
  String get province;
  @override
  @JsonKey(name: "city", defaultValue: "")
  String get city;
  @override
  @JsonKey(name: "district", defaultValue: "")
  String get district;
  @override
  @JsonKey(name: "village", defaultValue: "")
  String get village;
  @override
  @JsonKey(name: "terrId1", defaultValue: "")
  String get terrId1;
  @override
  @JsonKey(name: "terrId2", defaultValue: "")
  String get terrId2;
  @override
  @JsonKey(name: "terrId3", defaultValue: "")
  String get terrId3;
  @override
  @JsonKey(name: "terrId4", defaultValue: "")
  String get terrId4;
  @override
  @JsonKey(name: "longitudes", defaultValue: 0)
  double get longitudes;
  @override
  @JsonKey(name: "latitudes", defaultValue: 0)
  double get latitudes;
  @override
  @JsonKey(name: "fbToken", defaultValue: "")
  String get fbToken;
  @override
  @JsonKey(name: "googleToken", defaultValue: "")
  String get googleToken;
  @override
  @JsonKey(name: "msgToken", defaultValue: "")
  String get msgToken;
  @override
  @JsonKey(name: "otherToken", defaultValue: "")
  String get otherToken;
  @override
  @JsonKey(name: "alreadyInSave", defaultValue: false)
  bool get alreadyInSave;
  @override
  @JsonKey(name: "isNew", defaultValue: false)
  bool get isNew;
  @override
  @JsonKey(name: "modified", defaultValue: false)
  bool get modified;
  @override
  @JsonKey(ignore: true)
  _$UserDataModelCopyWith<_UserDataModel> get copyWith;
}
