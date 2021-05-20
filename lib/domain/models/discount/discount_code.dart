import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_code.freezed.dart';
part 'discount_code.g.dart';

@freezed
abstract class DiscountCode with _$DiscountCode {
  factory DiscountCode({String code, String totalDiscount}) = _DiscountCode;

  factory DiscountCode.fromJson(Map<String, dynamic> json) =>
      _$DiscountCodeFromJson(json);
}
