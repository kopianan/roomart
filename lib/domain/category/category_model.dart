import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
 class CategoryModel with _$CategoryModel {
  factory CategoryModel(
      {@JsonKey(name: "kategori_id")
          String? kategoriId,
      @JsonKey(name: "parent_id")
          String? parentId,
      @JsonKey(name: "internal_code")
          String? internalCode,
      @JsonKey(name: "kategori_code")
          String? kategoriCode,
      @JsonKey(name: "description", defaultValue: "description", nullable: true)
          String? description,
      @JsonKey(name: "picture")
          String? picture,
      @JsonKey(name: "display_store")
          String? displayStore,
      @JsonKey(name: "has_child")
          String? hasChild,
      @JsonKey(name: "count")
          String? count,
      @JsonKey(name: "count_total", defaultValue: "0", nullable: true, includeIfNull: true)
          String? countTotal}) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
