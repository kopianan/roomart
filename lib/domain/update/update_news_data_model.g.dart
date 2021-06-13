// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_news_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateNewsDataModel _$_$_UpdateNewsDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateNewsDataModel(
    iD: json['ID'] as String,
    image: json['Image'] as String,
    imageURL: json['ImageURL'] as String,
    title: json['Title'] as String,
    content: json['Content'] as String,
    createdDate: json['CreatedDate'] as String,
    isRead: json['IsRead'] as bool,
    receiver: json['Receiver'] as String,
  );
}

Map<String, dynamic> _$_$_UpdateNewsDataModelToJson(
        _$_UpdateNewsDataModel instance) =>
    <String, dynamic>{
      'ID': instance.iD,
      'Image': instance.image,
      'ImageURL': instance.imageURL,
      'Title': instance.title,
      'Content': instance.content,
      'CreatedDate': instance.createdDate,
      'IsRead': instance.isRead,
      'Receiver': instance.receiver,
    };
