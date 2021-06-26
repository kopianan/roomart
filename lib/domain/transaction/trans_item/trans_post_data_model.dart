import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomart/domain/transaction/trans_item/bought_item_data_model.dart';

part 'trans_post_data_model.freezed.dart';
part 'trans_post_data_model.g.dart';

@freezed
 class TransPostDataModel with _$TransPostDataModel {
  factory TransPostDataModel({
    @JsonKey(name: "trans_no") String? transNo,
    @JsonKey(name: "trans_type") String? transType,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "trans_dt") String? transDt,
    @JsonKey(name: "customer") String? customer,
    @JsonKey(name: "create_by") String? createBy,
    @JsonKey(name: "remark") String? remark,
    @JsonKey(name: "pmttype") String? pmttype,
    @JsonKey(name: "paymentchannel") String? paymentchannel,
    @JsonKey(name: "total_discount") String? pmtterm,
    @JsonKey(name: "pmtterm") int? bankId,
    @JsonKey(name: "bankId") String? totalDiscount,
    @JsonKey(name: "parent_id") String? parentId,
    @JsonKey(name: "is_reseller") bool? isReseller,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "fullname") String? fullname,
    @JsonKey(name: "details") List<BoughtItemDataModel?>? details,
  }) = _TransPostDataModel;

  factory TransPostDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransPostDataModelFromJson(json);
}