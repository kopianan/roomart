// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CostDataModel _$_$_CostDataModelFromJson(Map<String, dynamic> json) {
  return _$_CostDataModel(
    code: json['code'] as String?,
    name: json['name'] as String?,
    costs: (json['costs'] as List<dynamic>?)
        ?.map((e) => Costs.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CostDataModelToJson(_$_CostDataModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'costs': instance.costs,
    };
