import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomart/application/rajaongkir/ongkir_code_data_model.dart';

part 'cost_request_model.freezed.dart';
part 'cost_request_model.g.dart';

@freezed
 class CostRequestModel with _$CostRequestModel {
  factory CostRequestModel(
      {String? origin,
      String? destination,
      String? originType,
      String? destinationType,
      double? weight,
      String? courier,
      List<OngkirCodeDataModel>? courirList}) = _CostRequestModel;

  factory CostRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CostRequestModelFromJson(json);
}
