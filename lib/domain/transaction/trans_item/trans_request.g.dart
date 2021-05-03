// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trans_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransRequest _$_$_TransRequestFromJson(Map<String, dynamic> json) {
  return _$_TransRequest(
    (json['sales_trans'] as List)
        ?.map((e) => e == null
            ? null
            : TransPostDataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_TransRequestToJson(_$_TransRequest instance) =>
    <String, dynamic>{
      'sales_trans': instance.salesTrans,
    };
