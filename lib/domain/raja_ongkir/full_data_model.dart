import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_data_model.freezed.dart';
part 'full_data_model.g.dart';

@freezed
abstract class FullDataModel with _$FullDataModel {
  factory FullDataModel({
    @JsonKey(name: "city_id") String cityId,
    @JsonKey(name: "province_id") String provinceId,
    @JsonKey(name: "province") String province,
    @JsonKey(name: "type") String type,
    @JsonKey(name: "city_name") String cityName,
    @JsonKey(name: "postal_code") String postalCode,
  }) = _FullDataModel;

  factory FullDataModel.fromJson(Map<String, dynamic> json) =>
      _$FullDataModelFromJson(json);
}
