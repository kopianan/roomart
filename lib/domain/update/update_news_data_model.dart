import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_news_data_model.freezed.dart';
part 'update_news_data_model.g.dart';

@freezed
abstract class UpdateNewsDataModel with _$UpdateNewsDataModel {
  factory UpdateNewsDataModel({
    @JsonKey(name: 'ID') String iD,
    @JsonKey(name: 'Image') String image,
    @JsonKey(name: 'ImageURL') String imageURL,
    @JsonKey(name: 'Title') String title,
    @JsonKey(name: 'Content') String content,
    @JsonKey(name: 'CreatedDate') String createdDate,
    @JsonKey(name: 'IsRead') bool isRead,
    @JsonKey(name: 'Receiver') String receiver,
  }) = _UpdateNewsDataModel;

  factory UpdateNewsDataModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateNewsDataModelFromJson(json);
}
