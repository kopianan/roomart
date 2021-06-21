// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataModel _$_$_UserDataModelFromJson(Map<String, dynamic> json) {
  return _$_UserDataModel(
    userId: json['userId'] as String ?? '',
    error: json['error'] as int ?? 0,
    parentId: json['parentId'] as String ?? '',
    userName: json['userName'] as String ?? '',
    messageError: json['message'] as String ?? '',
    email: json['email'] as String ?? '',
    phone: json['phone'] as String ?? '',
    password: json['password'] as String ?? '',
    fullName: json['fullName'] as String ?? '',
    typeIds: json['typeIds'] as String ?? '',
    status: (json['status'] as num)?.toDouble() ?? 0,
    address: json['address'] as String ?? '',
    shipTo1: json['shipTo1'] as String ?? '',
    shipTo2: json['shipTo2'] as String ?? '',
    country: json['country'] as String ?? '',
    province: json['province'] as String ?? '',
    city: json['city'] as String ?? '',
    district: json['district'] as String ?? '',
    village: json['village'] as String ?? '',
    terrId1: json['terrId1'] as String ?? '',
    terrId2: json['terrId2'] as String ?? '',
    terrId3: json['terrId3'] as String ?? '',
    terrId4: json['terrId4'] as String ?? '',
    longitudes: (json['longitudes'] as num)?.toDouble() ?? 0,
    latitudes: (json['latitudes'] as num)?.toDouble() ?? 0,
    fbToken: json['fbToken'] as String ?? '',
    googleToken: json['googleToken'] as String ?? '',
    msgToken: json['msgToken'] as String ?? '',
    otherToken: json['otherToken'] as String ?? '',
    alreadyInSave: json['alreadyInSave'] as bool ?? false,
    isNew: json['isNew'] as bool ?? false,
    modified: json['modified'] as bool ?? false,
  );
}

Map<String, dynamic> _$_$_UserDataModelToJson(_$_UserDataModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'error': instance.error,
      'parentId': instance.parentId,
      'userName': instance.userName,
      'message': instance.messageError,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'fullName': instance.fullName,
      'typeIds': instance.typeIds,
      'status': instance.status,
      'address': instance.address,
      'shipTo1': instance.shipTo1,
      'shipTo2': instance.shipTo2,
      'country': instance.country,
      'province': instance.province,
      'city': instance.city,
      'district': instance.district,
      'village': instance.village,
      'terrId1': instance.terrId1,
      'terrId2': instance.terrId2,
      'terrId3': instance.terrId3,
      'terrId4': instance.terrId4,
      'longitudes': instance.longitudes,
      'latitudes': instance.latitudes,
      'fbToken': instance.fbToken,
      'googleToken': instance.googleToken,
      'msgToken': instance.msgToken,
      'otherToken': instance.otherToken,
      'alreadyInSave': instance.alreadyInSave,
      'isNew': instance.isNew,
      'modified': instance.modified,
    };
