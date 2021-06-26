import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/costs.dart';

part 'cost_data_model.freezed.dart';
part 'cost_data_model.g.dart';

@freezed
 class CostDataModel with _$CostDataModel {
  factory CostDataModel({String? code, String? name, List<Costs>? costs}) =
      _CostDataModel;

  factory CostDataModel.fromJson(Map<String, dynamic> json) =>
      _$CostDataModelFromJson(json);
}
