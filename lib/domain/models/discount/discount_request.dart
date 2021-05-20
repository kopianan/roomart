import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_request.freezed.dart';
part 'discount_request.g.dart';

@freezed
abstract class DiscountRequest with _$DiscountRequest {
  factory DiscountRequest(
      {String token,
      @JsonKey(name: "Code") String code,
      @JsonKey(name: "ShoppingTotal") String total}) = _DiscountRequest;

  factory DiscountRequest.fromJson(Map<String, dynamic> json) =>
      _$DiscountRequestFromJson(json);
}
