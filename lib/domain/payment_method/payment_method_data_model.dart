import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_data_model.freezed.dart';
part 'payment_method_data_model.g.dart';

@freezed
 class PaymentMethodDataModel with _$PaymentMethodDataModel {
  factory PaymentMethodDataModel({
    @JsonKey(name: "_id") String? sId,
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "is_voucher") String? isVoucher,
    @JsonKey(name: "is_multi") String? isMulti,
    @JsonKey(name: "is_coupon") String? isCoupon,
    @JsonKey(name: "is_pos") String? isPos,
  }) = _PaymentMethodDataModel;

  factory PaymentMethodDataModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDataModelFromJson(json);
}
