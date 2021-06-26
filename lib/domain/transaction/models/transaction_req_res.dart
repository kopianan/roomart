import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_req_res.freezed.dart';
part 'transaction_req_res.g.dart';

@freezed
class TransactionReqRes with _$TransactionReqRes {
  factory TransactionReqRes.transactionHistoryRequest({
    @JsonKey(name: "Token") String? token,
    @JsonKey(name: "CustomerID") String? customerId,
    @JsonKey(name: "Limit") int? limit,
    @JsonKey(name: "Offset") int? offset,
    @JsonKey(name: "Status") String? status,
  }) = TransactionHistoryRequest;

  factory TransactionReqRes.fromJson(Map<String, dynamic> json) =>
      _$TransactionReqResFromJson(json);
}
