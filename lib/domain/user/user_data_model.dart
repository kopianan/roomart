import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
abstract class UserDataModel with _$UserDataModel {
  factory UserDataModel({
    @JsonKey(name: "userId") String userId,
    @JsonKey(name: "error") int error,
    @JsonKey(name: "parentId") String parentId,
    @JsonKey(name: "userName") String userName,
    @JsonKey(name: "message") String messageError,
    @JsonKey(name: "email") String email,
    @JsonKey(name: "phone") String phone,
    @JsonKey(name: "password") String password,
    @JsonKey(name: "fullName") String fullName,
    @JsonKey(name: "typeIds") String typeIds,
    @JsonKey(name: "status") double status,
    @JsonKey(name: "address") String address,
    @JsonKey(name: "shipTo1") String shipTo1,
    @JsonKey(name: "shipTo2") String shipTo2,
    @JsonKey(name: "country") String country,
    @JsonKey(name: "province") String province,
    @JsonKey(name: "city") String city,
    @JsonKey(name: "district") String district,
    @JsonKey(name: "village") String village,
    @JsonKey(name: "terrId1") String terrId1,
    @JsonKey(name: "terrId2") String terrId2,
    @JsonKey(name: "terrId3") String terrId3,
    @JsonKey(name: "terrId4") String terrId4,
    @JsonKey(name: "longitudes") double longitudes,
    @JsonKey(name: "latitudes") double latitudes,
    @JsonKey(name: "fbToken") String fbToken,
    @JsonKey(name: "googleToken") String googleToken,
    @JsonKey(name: "msgToken") String msgToken,
    @JsonKey(name: "otherToken") String otherToken,
    @JsonKey(name: "alreadyInSave") bool alreadyInSave,
    @JsonKey(name: "isNew") bool isNew,
    @JsonKey(name: "modified") bool modified,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
