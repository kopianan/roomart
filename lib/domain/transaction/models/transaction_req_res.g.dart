// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_req_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionHistoryRequest _$_$TransactionHistoryRequestFromJson(
    Map<String, dynamic> json) {
  return _$TransactionHistoryRequest(
    token: json['Token'] as String?,
    customerId: json['CustomerID'] as String?,
    limit: json['Limit'] as int?,
    offset: json['Offset'] as int?,
    status: json['Status'] as String?,
  );
}

Map<String, dynamic> _$_$TransactionHistoryRequestToJson(
        _$TransactionHistoryRequest instance) =>
    <String, dynamic>{
      'Token': instance.token,
      'CustomerID': instance.customerId,
      'Limit': instance.limit,
      'Offset': instance.offset,
      'Status': instance.status,
    };
