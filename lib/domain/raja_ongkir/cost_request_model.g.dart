// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CostRequestModel _$_$_CostRequestModelFromJson(Map<String, dynamic> json) {
  return _$_CostRequestModel(
    origin: json['origin'] as String?,
    destination: json['destination'] as String?,
    originType: json['originType'] as String?,
    destinationType: json['destinationType'] as String?,
    weight: (json['weight'] as num?)?.toDouble(),
    courier: json['courier'] as String?,
    courirList: (json['courirList'] as List<dynamic>?)
        ?.map((e) => OngkirCodeDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CostRequestModelToJson(
        _$_CostRequestModel instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'originType': instance.originType,
      'destinationType': instance.destinationType,
      'weight': instance.weight,
      'courier': instance.courier,
      'courirList': instance.courirList,
    };
