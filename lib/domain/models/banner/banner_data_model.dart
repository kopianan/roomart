import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_data_model.freezed.dart';
part 'banner_data_model.g.dart';

@freezed
 class BannerDataModel with _$BannerDataModel {
  factory BannerDataModel(
      {@JsonKey(name: "BannerName") String? bannerName,
      @JsonKey(name: "ImageList") List<String>? imageLIst}) = _BannerDataModel;

  factory BannerDataModel.fromJson(Map<String, dynamic> json) =>
      _$BannerDataModelFromJson(json);
}
