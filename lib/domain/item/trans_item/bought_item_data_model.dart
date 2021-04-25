import 'package:freezed_annotation/freezed_annotation.dart';

part 'bought_item_data_model.freezed.dart';
part 'bought_item_data_model.g.dart';

@freezed
abstract class BoughtItemDataModel with _$BoughtItemDataModel {
  factory BoughtItemDataModel({
    @JsonKey(name: "item_code") String itemCode,
    @JsonKey(name: "item_id") String itemId,
    @JsonKey(name: "qty") String qty,
    @JsonKey(name: "unit") String unit,
    @JsonKey(name: "price") String price,
    @JsonKey(name: "tax") String tax,
    @JsonKey(name: "discount") String discount,
  }) = _BoughtItemDataModel;

  factory BoughtItemDataModel.fromJson(Map<String, dynamic> json) =>
      _$BoughtItemDataModelFromJson(json);
}
