// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_news_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UpdateNewsDataModel _$UpdateNewsDataModelFromJson(Map<String, dynamic> json) {
  return _UpdateNewsDataModel.fromJson(json);
}

/// @nodoc
class _$UpdateNewsDataModelTearOff {
  const _$UpdateNewsDataModelTearOff();

// ignore: unused_element
  _UpdateNewsDataModel call(
      {@JsonKey(name: 'ID') String iD,
      @JsonKey(name: 'Image') String image,
      @JsonKey(name: 'ImageURL') String imageURL,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Content') String content,
      @JsonKey(name: 'CreatedDate') String createdDate,
      @JsonKey(name: 'IsRead') bool isRead,
      @JsonKey(name: 'Receiver') String receiver}) {
    return _UpdateNewsDataModel(
      iD: iD,
      image: image,
      imageURL: imageURL,
      title: title,
      content: content,
      createdDate: createdDate,
      isRead: isRead,
      receiver: receiver,
    );
  }

// ignore: unused_element
  UpdateNewsDataModel fromJson(Map<String, Object> json) {
    return UpdateNewsDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateNewsDataModel = _$UpdateNewsDataModelTearOff();

/// @nodoc
mixin _$UpdateNewsDataModel {
  @JsonKey(name: 'ID')
  String get iD;
  @JsonKey(name: 'Image')
  String get image;
  @JsonKey(name: 'ImageURL')
  String get imageURL;
  @JsonKey(name: 'Title')
  String get title;
  @JsonKey(name: 'Content')
  String get content;
  @JsonKey(name: 'CreatedDate')
  String get createdDate;
  @JsonKey(name: 'IsRead')
  bool get isRead;
  @JsonKey(name: 'Receiver')
  String get receiver;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UpdateNewsDataModelCopyWith<UpdateNewsDataModel> get copyWith;
}

/// @nodoc
abstract class $UpdateNewsDataModelCopyWith<$Res> {
  factory $UpdateNewsDataModelCopyWith(
          UpdateNewsDataModel value, $Res Function(UpdateNewsDataModel) then) =
      _$UpdateNewsDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID') String iD,
      @JsonKey(name: 'Image') String image,
      @JsonKey(name: 'ImageURL') String imageURL,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Content') String content,
      @JsonKey(name: 'CreatedDate') String createdDate,
      @JsonKey(name: 'IsRead') bool isRead,
      @JsonKey(name: 'Receiver') String receiver});
}

/// @nodoc
class _$UpdateNewsDataModelCopyWithImpl<$Res>
    implements $UpdateNewsDataModelCopyWith<$Res> {
  _$UpdateNewsDataModelCopyWithImpl(this._value, this._then);

  final UpdateNewsDataModel _value;
  // ignore: unused_field
  final $Res Function(UpdateNewsDataModel) _then;

  @override
  $Res call({
    Object iD = freezed,
    Object image = freezed,
    Object imageURL = freezed,
    Object title = freezed,
    Object content = freezed,
    Object createdDate = freezed,
    Object isRead = freezed,
    Object receiver = freezed,
  }) {
    return _then(_value.copyWith(
      iD: iD == freezed ? _value.iD : iD as String,
      image: image == freezed ? _value.image : image as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as String,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
      receiver: receiver == freezed ? _value.receiver : receiver as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateNewsDataModelCopyWith<$Res>
    implements $UpdateNewsDataModelCopyWith<$Res> {
  factory _$UpdateNewsDataModelCopyWith(_UpdateNewsDataModel value,
          $Res Function(_UpdateNewsDataModel) then) =
      __$UpdateNewsDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID') String iD,
      @JsonKey(name: 'Image') String image,
      @JsonKey(name: 'ImageURL') String imageURL,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Content') String content,
      @JsonKey(name: 'CreatedDate') String createdDate,
      @JsonKey(name: 'IsRead') bool isRead,
      @JsonKey(name: 'Receiver') String receiver});
}

/// @nodoc
class __$UpdateNewsDataModelCopyWithImpl<$Res>
    extends _$UpdateNewsDataModelCopyWithImpl<$Res>
    implements _$UpdateNewsDataModelCopyWith<$Res> {
  __$UpdateNewsDataModelCopyWithImpl(
      _UpdateNewsDataModel _value, $Res Function(_UpdateNewsDataModel) _then)
      : super(_value, (v) => _then(v as _UpdateNewsDataModel));

  @override
  _UpdateNewsDataModel get _value => super._value as _UpdateNewsDataModel;

  @override
  $Res call({
    Object iD = freezed,
    Object image = freezed,
    Object imageURL = freezed,
    Object title = freezed,
    Object content = freezed,
    Object createdDate = freezed,
    Object isRead = freezed,
    Object receiver = freezed,
  }) {
    return _then(_UpdateNewsDataModel(
      iD: iD == freezed ? _value.iD : iD as String,
      image: image == freezed ? _value.image : image as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as String,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
      receiver: receiver == freezed ? _value.receiver : receiver as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UpdateNewsDataModel implements _UpdateNewsDataModel {
  _$_UpdateNewsDataModel(
      {@JsonKey(name: 'ID') this.iD,
      @JsonKey(name: 'Image') this.image,
      @JsonKey(name: 'ImageURL') this.imageURL,
      @JsonKey(name: 'Title') this.title,
      @JsonKey(name: 'Content') this.content,
      @JsonKey(name: 'CreatedDate') this.createdDate,
      @JsonKey(name: 'IsRead') this.isRead,
      @JsonKey(name: 'Receiver') this.receiver});

  factory _$_UpdateNewsDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateNewsDataModelFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final String iD;
  @override
  @JsonKey(name: 'Image')
  final String image;
  @override
  @JsonKey(name: 'ImageURL')
  final String imageURL;
  @override
  @JsonKey(name: 'Title')
  final String title;
  @override
  @JsonKey(name: 'Content')
  final String content;
  @override
  @JsonKey(name: 'CreatedDate')
  final String createdDate;
  @override
  @JsonKey(name: 'IsRead')
  final bool isRead;
  @override
  @JsonKey(name: 'Receiver')
  final String receiver;

  @override
  String toString() {
    return 'UpdateNewsDataModel(iD: $iD, image: $image, imageURL: $imageURL, title: $title, content: $content, createdDate: $createdDate, isRead: $isRead, receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateNewsDataModel &&
            (identical(other.iD, iD) ||
                const DeepCollectionEquality().equals(other.iD, iD)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)) &&
            (identical(other.receiver, receiver) ||
                const DeepCollectionEquality()
                    .equals(other.receiver, receiver)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iD) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(isRead) ^
      const DeepCollectionEquality().hash(receiver);

  @JsonKey(ignore: true)
  @override
  _$UpdateNewsDataModelCopyWith<_UpdateNewsDataModel> get copyWith =>
      __$UpdateNewsDataModelCopyWithImpl<_UpdateNewsDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateNewsDataModelToJson(this);
  }
}

abstract class _UpdateNewsDataModel implements UpdateNewsDataModel {
  factory _UpdateNewsDataModel(
      {@JsonKey(name: 'ID') String iD,
      @JsonKey(name: 'Image') String image,
      @JsonKey(name: 'ImageURL') String imageURL,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Content') String content,
      @JsonKey(name: 'CreatedDate') String createdDate,
      @JsonKey(name: 'IsRead') bool isRead,
      @JsonKey(name: 'Receiver') String receiver}) = _$_UpdateNewsDataModel;

  factory _UpdateNewsDataModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateNewsDataModel.fromJson;

  @override
  @JsonKey(name: 'ID')
  String get iD;
  @override
  @JsonKey(name: 'Image')
  String get image;
  @override
  @JsonKey(name: 'ImageURL')
  String get imageURL;
  @override
  @JsonKey(name: 'Title')
  String get title;
  @override
  @JsonKey(name: 'Content')
  String get content;
  @override
  @JsonKey(name: 'CreatedDate')
  String get createdDate;
  @override
  @JsonKey(name: 'IsRead')
  bool get isRead;
  @override
  @JsonKey(name: 'Receiver')
  String get receiver;
  @override
  @JsonKey(ignore: true)
  _$UpdateNewsDataModelCopyWith<_UpdateNewsDataModel> get copyWith;
}
