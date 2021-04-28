import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_data_model.freezed.dart';
part 'province_data_model.g.dart';

@freezed
abstract class ProvinceDataModel with _$ProvinceDataModel {
  factory ProvinceDataModel({
    @JsonKey(name: "province_id") String provinceId,
    @JsonKey(name: "province") String province,
  }) = _ProvinceDataModel;

  factory ProvinceDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinceDataModelFromJson(json);
}
