// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'costs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Costs _$_$_CostsFromJson(Map<String, dynamic> json) {
  return _$_Costs(
    service: json['service'] as String?,
    description: json['description'] as String?,
    cost: (json['cost'] as List<dynamic>?)
        ?.map((e) => Cost.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CostsToJson(_$_Costs instance) => <String, dynamic>{
      'service': instance.service,
      'description': instance.description,
      'cost': instance.cost,
    };
