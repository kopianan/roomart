import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_roomart_data_model.freezed.dart';
part 'user_roomart_data_model.g.dart';

@freezed
abstract class UserRoomartDataModel with _$UserRoomartDataModel {
  factory UserRoomartDataModel({
    @JsonKey(name: 'userId', defaultValue: "") String userId,
    @JsonKey(name: 'parentId', defaultValue: "") String parentId,
    @JsonKey(name: 'userName', defaultValue: "") String userName,
    @JsonKey(name: 'email', defaultValue: "") String email,
    @JsonKey(name: 'phone', defaultValue: "") String phone,
    @JsonKey(name: 'password', defaultValue: "") String password,
    @JsonKey(name: 'fullName', defaultValue: "") String fullName,
    @JsonKey(name: 'typeIds', defaultValue: "") String typeIds,
    @JsonKey(name: 'status', defaultValue: 0) int status,
    @JsonKey(name: 'birthDate', defaultValue: "") String birthDate,
    @JsonKey(name: 'address', defaultValue: "") String address,
    @JsonKey(name: 'shipTo1', defaultValue: "") String shipTo1,
    @JsonKey(name: 'shipTo2', defaultValue: "") String shipTo2,
    @JsonKey(name: 'country', defaultValue: "") String country,
    @JsonKey(name: 'province', defaultValue: "") String province,
    @JsonKey(name: 'city', defaultValue: "") String city,
    @JsonKey(name: 'district', defaultValue: "") String district,
    @JsonKey(name: 'village', defaultValue: "") String village,
    @JsonKey(name: 'terrId1', defaultValue: "") String terrId1,
    @JsonKey(name: 'terrId2', defaultValue: "") String terrId2,
    @JsonKey(name: 'terrId3', defaultValue: "") String terrId3,
    @JsonKey(name: 'terrId4', defaultValue: "") String terrId4,
    @JsonKey(name: 'longitudes', defaultValue: 0) int longitudes,
    @JsonKey(name: 'latitudes', defaultValue: 0) int latitudes,
    @JsonKey(name: 'regDate', defaultValue: "") String regDate,
    @JsonKey(name: 'fbToken', defaultValue: "") String fbToken,
    @JsonKey(name: 'googleToken', defaultValue: "") String googleToken,
    @JsonKey(name: 'msgToken', defaultValue: "") String msgToken,
    @JsonKey(name: 'otherToken', defaultValue: "") String otherToken,
    @JsonKey(name: 'alreadyInSave', defaultValue: false) bool alreadyInSave,
    @JsonKey(name: 'isNew', defaultValue: false) bool isNew,
    @JsonKey(name: 'modified', defaultValue: false) bool modified,
    @JsonKey(name: 'error', defaultValue: 0) int error,
    @JsonKey(name: 'message', defaultValue: "") String message,
  }) = _UserRoomartDataModel;

  factory UserRoomartDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserRoomartDataModelFromJson(json);
}
