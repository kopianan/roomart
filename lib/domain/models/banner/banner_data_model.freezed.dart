// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'banner_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerDataModel _$BannerDataModelFromJson(Map<String, dynamic> json) {
  return _BannerDataModel.fromJson(json);
}

/// @nodoc
class _$BannerDataModelTearOff {
  const _$BannerDataModelTearOff();

  _BannerDataModel call(
      {@JsonKey(name: "BannerName") String? bannerName,
      @JsonKey(name: "ImageList") List<String>? imageLIst}) {
    return _BannerDataModel(
      bannerName: bannerName,
      imageLIst: imageLIst,
    );
  }

  BannerDataModel fromJson(Map<String, Object> json) {
    return BannerDataModel.fromJson(json);
  }
}

/// @nodoc
const $BannerDataModel = _$BannerDataModelTearOff();

/// @nodoc
mixin _$BannerDataModel {
  @JsonKey(name: "BannerName")
  String? get bannerName => throw _privateConstructorUsedError;
  @JsonKey(name: "ImageList")
  List<String>? get imageLIst => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerDataModelCopyWith<BannerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDataModelCopyWith<$Res> {
  factory $BannerDataModelCopyWith(
          BannerDataModel value, $Res Function(BannerDataModel) then) =
      _$BannerDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "BannerName") String? bannerName,
      @JsonKey(name: "ImageList") List<String>? imageLIst});
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
    Object? bannerName = freezed,
    Object? imageLIst = freezed,
  }) {
    return _then(_value.copyWith(
      bannerName: bannerName == freezed
          ? _value.bannerName
          : bannerName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLIst: imageLIst == freezed
          ? _value.imageLIst
          : imageLIst // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      {@JsonKey(name: "BannerName") String? bannerName,
      @JsonKey(name: "ImageList") List<String>? imageLIst});
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
    Object? bannerName = freezed,
    Object? imageLIst = freezed,
  }) {
    return _then(_BannerDataModel(
      bannerName: bannerName == freezed
          ? _value.bannerName
          : bannerName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLIst: imageLIst == freezed
          ? _value.imageLIst
          : imageLIst // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannerDataModel implements _BannerDataModel {
  _$_BannerDataModel(
      {@JsonKey(name: "BannerName") this.bannerName,
      @JsonKey(name: "ImageList") this.imageLIst});

  factory _$_BannerDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BannerDataModelFromJson(json);

  @override
  @JsonKey(name: "BannerName")
  final String? bannerName;
  @override
  @JsonKey(name: "ImageList")
  final List<String>? imageLIst;

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
          {@JsonKey(name: "BannerName") String? bannerName,
          @JsonKey(name: "ImageList") List<String>? imageLIst}) =
      _$_BannerDataModel;

  factory _BannerDataModel.fromJson(Map<String, dynamic> json) =
      _$_BannerDataModel.fromJson;

  @override
  @JsonKey(name: "BannerName")
  String? get bannerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "ImageList")
  List<String>? get imageLIst => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BannerDataModelCopyWith<_BannerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
