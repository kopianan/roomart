import 'package:freezed_annotation/freezed_annotation.dart';

part 'ongkir_code_data_model.freezed.dart';
part 'ongkir_code_data_model.g.dart';

@freezed
 class OngkirCodeDataModel with _$OngkirCodeDataModel {
  factory OngkirCodeDataModel(
      {String? id,
      String? code,
      String? label,
      String? name}) = _OngkirCodeDataModel;

  factory OngkirCodeDataModel.fromJson(Map<String, dynamic> json) =>
      _$OngkirCodeDataModelFromJson(json);
}
