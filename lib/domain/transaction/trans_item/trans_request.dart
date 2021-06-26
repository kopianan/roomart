import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomart/domain/transaction/trans_item/trans_post_data_model.dart';

part 'trans_request.freezed.dart';
part 'trans_request.g.dart';

@freezed
 class TransRequest with _$TransRequest {
  factory TransRequest(
          {required String token,
          @JsonKey(name: "sales_trans") List<TransPostDataModel>? salesTrans}) =
      _TransRequest;

  factory TransRequest.fromJson(Map<String, dynamic> json) =>
      _$TransRequestFromJson(json);
}
