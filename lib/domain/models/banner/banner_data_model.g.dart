// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannerDataModel _$_$_BannerDataModelFromJson(Map<String, dynamic> json) {
  return _$_BannerDataModel(
    bannerName: json['BannerName'] as String,
    imageLIst: (json['ImageList'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_BannerDataModelToJson(_$_BannerDataModel instance) =>
    <String, dynamic>{
      'BannerName': instance.bannerName,
      'ImageList': instance.imageLIst,
    };
