import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost.freezed.dart';
part 'cost.g.dart';

@freezed
abstract class Cost with _$Cost {
  factory Cost({
    int value,
    String etd,
    String note,
  }) = _Cost;

  factory Cost.fromJson(Map<String, dynamic> json) => _$CostFromJson(json);
}
