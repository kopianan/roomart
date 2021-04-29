import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_request_model.freezed.dart';
part 'cost_request_model.g.dart';

@freezed
abstract class CostRequestModel with _$CostRequestModel {
  factory CostRequestModel(
      {String origin,
      String destination,
      double weight,
      String courier}) = _CostRequestModel;

  factory CostRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CostRequestModelFromJson(json);
}
