// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'banner_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BannerDataModel _$BannerDataModelFromJson(Map<String, dynamic> json) {
  return _BannerDataModel.fromJson(json);
}

/// @nodoc
class _$BannerDataModelTearOff {
  const _$BannerDataModelTearOff();

// ignore: unused_element
  _BannerDataModel call(
      {@JsonKey(name: 'BannerName') String bannerName,
      @JsonKey(name: 'ImageList') List<String> imageLIst}) {
    return _BannerDataModel(
      bannerName: bannerName,
      imageLIst: imageLIst,
    );
  }

// ignore: unused_element
  BannerDataModel fromJson(Map<String, Object> json) {
    return BannerDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BannerDataModel = _$BannerDataModelTearOff();

/// @nodoc
mixin _$BannerDataModel {
  @JsonKey(name: 'BannerName')
  String get bannerName;
  @JsonKey(name: 'ImageList')
  List<String> get imageLIst;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BannerDataModelCopyWith<BannerDataModel> get copyWith;
}

/// @nodoc
abstract class $BannerDataModelCopyWith<$Res> {
  factory $BannerDataModelCopyWith(
          BannerDataModel value, $Res Function(BannerDataModel) then) =
      _$BannerDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'BannerName') String bannerName,
      @JsonKey(name: 'ImageList') List<String> imageLIst});
}

/// @nodoc
class _$BannerDataModelCopyWithImpl<$Res>
    implements $BannerDataModelCopyWith<$Res> {
  _$BannerDataModelCopyWithImpl(this._value, this._then);

  final BannerDataModel _value;
  // ignore: unused_field
  final $Res Function(BannerDataModel) _then;

  @override
  $Res call({
    Object bannerName = freezed,
    Object imageLIst = freezed,
  }) {
    return _then(_value.copyWith(
      bannerName:
          bannerName == freezed ? _value.bannerName : bannerName as String,
      imageLIst:
          imageLIst == freezed ? _value.imageLIst : imageLIst as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$BannerDataModelCopyWith<$Res>
    implements $BannerDataModelCopyWith<$Res> {
  factory _$BannerDataModelCopyWith(
          _BannerDataModel value, $Res Function(_BannerDataModel) then) =
      __$BannerDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'BannerName') String bannerName,
      @JsonKey(name: 'ImageList') List<String> imageLIst});
}

/// @nodoc
class __$BannerDataModelCopyWithImpl<$Res>
    extends _$BannerDataModelCopyWithImpl<$Res>
    implements _$BannerDataModelCopyWith<$Res> {
  __$BannerDataModelCopyWithImpl(
      _BannerDataModel _value, $Res Function(_BannerDataModel) _then)
      : super(_value, (v) => _then(v as _BannerDataModel));

  @override
  _BannerDataModel get _value => super._value as _BannerDataModel;

  @override
  $Res call({
    Object bannerName = freezed,
    Object imageLIst = freezed,
  }) {
    return _then(_BannerDataModel(
      bannerName:
          bannerName == freezed ? _value.bannerName : bannerName as String,
      imageLIst:
          imageLIst == freezed ? _value.imageLIst : imageLIst as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BannerDataModel implements _BannerDataModel {
  _$_BannerDataModel(
      {@JsonKey(name: 'BannerName') this.bannerName,
      @JsonKey(name: 'ImageList') this.imageLIst});

  factory _$_BannerDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BannerDataModelFromJson(json);

  @override
  @JsonKey(name: 'BannerName')
  final String bannerName;
  @override
  @JsonKey(name: 'ImageList')
  final List<String> imageLIst;

  @override
  String toString() {
    return 'BannerDataModel(bannerName: $bannerName, imageLIst: $imageLIst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BannerDataModel &&
            (identical(other.bannerName, bannerName) ||
                const DeepCollectionEquality()
                    .equals(other.bannerName, bannerName)) &&
            (identical(other.imageLIst, imageLIst) ||
                const DeepCollectionEquality()
                    .equals(other.imageLIst, imageLIst)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bannerName) ^
      const DeepCollectionEquality().hash(imageLIst);

  @JsonKey(ignore: true)
  @override
  _$BannerDataModelCopyWith<_BannerDataModel> get copyWith =>
      __$BannerDataModelCopyWithImpl<_BannerDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BannerDataModelToJson(this);
  }
}

abstract class _BannerDataModel implements BannerDataModel {
  factory _BannerDataModel(
      {@JsonKey(name: 'BannerName') String bannerName,
      @JsonKey(name: 'ImageList') List<String> imageLIst}) = _$_BannerDataModel;

  factory _BannerDataModel.fromJson(Map<String, dynamic> json) =
      _$_BannerDataModel.fromJson;

  @override
  @JsonKey(name: 'BannerName')
  String get bannerName;
  @override
  @JsonKey(name: 'ImageList')
  List<String> get imageLIst;
  @override
  @JsonKey(ignore: true)
  _$BannerDataModelCopyWith<_BannerDataModel> get copyWith;
}
