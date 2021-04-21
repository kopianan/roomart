// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_req_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionHistoryRequest _$_$_TransactionHistoryRequestFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionHistoryRequest(
    token: json['Token'] as String,
    customerId: json['CustomerID'] as String,
    limit: json['Limit'] as String,
    offset: json['Offset'] as String,
    status: json['Status'] as String,
  );
}

Map<String, dynamic> _$_$_TransactionHistoryRequestToJson(
        _$_TransactionHistoryRequest instance) =>
    <String, dynamic>{
      'Token': instance.token,
      'CustomerID': instance.customerId,
      'Limit': instance.limit,
      'Offset': instance.offset,
      'Status': instance.status,
    };
