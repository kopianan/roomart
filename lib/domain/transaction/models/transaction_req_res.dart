import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_req_res.freezed.dart';
part 'transaction_req_res.g.dart';

@freezed
abstract class TransactionReqRes with _$TransactionReqRes {
  factory TransactionReqRes.transactionHistoryRequest({
    @JsonKey(name: "Token") String token,
    @JsonKey(name: "CustomerID") String customerId,
    @JsonKey(name: "Limit") String limit,
    @JsonKey(name: "Offset") String offset,
    @JsonKey(name: "Status") String status,
  }) = _TransactionHistoryRequest;

  factory TransactionReqRes.fromJson(Map<String, dynamic> json) =>
      _$TransactionReqResFromJson(json);
}
