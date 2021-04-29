// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CostRequestModel _$_$_CostRequestModelFromJson(Map<String, dynamic> json) {
  return _$_CostRequestModel(
    origin: json['origin'] as String,
    destination: json['destination'] as String,
    weight: (json['weight'] as num)?.toDouble(),
    courier: json['courier'] as String,
  );
}

Map<String, dynamic> _$_$_CostRequestModelToJson(
        _$_CostRequestModel instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'weight': instance.weight,
      'courier': instance.courier,
    };
