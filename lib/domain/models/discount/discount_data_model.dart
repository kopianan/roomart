import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_data_model.freezed.dart';
part 'discount_data_model.g.dart';

@freezed
 class DiscountDataModel with _$DiscountDataModel {
  factory DiscountDataModel({
    @JsonKey(name: "customer_code") String? customerCode,
    @JsonKey(name: "customer_name") String? customerName,
    @JsonKey(name: "customer_type_id") String? customerTypeId,
    @JsonKey(name: "event_discount") String? eventDiscount,
    @JsonKey(name: "event_begin_date") String? eventBeginDate,
    @JsonKey(name: "event_end_date") String? eventEndDate,
    @JsonKey(name: "discount_days") String? discountDays,
    @JsonKey(name: "payment_type_id") String? paymentTypeId,
  }) = _DiscountDataModel;

  factory DiscountDataModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountDataModelFromJson(json);
}
