// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'full_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FullDataModel _$FullDataModelFromJson(Map<String, dynamic> json) {
  return _FullDataModel.fromJson(json);
}

/// @nodoc
class _$FullDataModelTearOff {
  const _$FullDataModelTearOff();

// ignore: unused_element
  _FullDataModel call(
      {@JsonKey(name: 'city_id') String cityId,
      @JsonKey(name: 'province_id') String provinceId,
      @JsonKey(name: 'province') String province,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'city_name') String cityName,
      @JsonKey(name: 'postal_code') String postalCode}) {
    return _FullDataModel(
      cityId: cityId,
      provinceId: provinceId,
      province: province,
      type: type,
      cityName: cityName,
      postalCode: postalCode,
    );
  }

// ignore: unused_element
  FullDataModel fromJson(Map<String, Object> json) {
    return FullDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FullDataModel = _$FullDataModelTearOff();

/// @nodoc
mixin _$FullDataModel {
  @JsonKey(name: 'city_id')
  String get cityId;
  @JsonKey(name: 'province_id')
  String get provinceId;
  @JsonKey(name: 'province')
  String get province;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'city_name')
  String get cityName;
  @JsonKey(name: 'postal_code')
  String get postalCode;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FullDataModelCopyWith<FullDataModel> get copyWith;
}

/// @nodoc
abstract class $FullDataModelCopyWith<$Res> {
  factory $FullDataModelCopyWith(
          FullDataModel value, $Res Function(FullDataModel) then) =
      _$FullDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'city_id') String cityId,
      @JsonKey(name: 'province_id') String provinceId,
      @JsonKey(name: 'province') String province,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'city_name') String cityName,
      @JsonKey(name: 'postal_code') String postalCode});
}

/// @nodoc
class _$FullDataModelCopyWithImpl<$Res>
    implements $FullDataModelCopyWith<$Res> {
  _$FullDataModelCopyWithImpl(this._value, this._then);

  final FullDataModel _value;
  // ignore: unused_field
  final $Res Function(FullDataModel) _then;

  @override
  $Res call({
    Object cityId = freezed,
    Object provinceId = freezed,
    Object province = freezed,
    Object type = freezed,
    Object cityName = freezed,
    Object postalCode = freezed,
  }) {
    return _then(_value.copyWith(
      cityId: cityId == freezed ? _value.cityId : cityId as String,
      provinceId:
          provinceId == freezed ? _value.provinceId : provinceId as String,
      province: province == freezed ? _value.province : province as String,
      type: type == freezed ? _value.type : type as String,
      cityName: cityName == freezed ? _value.cityName : cityName as String,
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as String,
    ));
  }
}

/// @nodoc
abstract class _$FullDataModelCopyWith<$Res>
    implements $FullDataModelCopyWith<$Res> {
  factory _$FullDataModelCopyWith(
          _FullDataModel value, $Res Function(_FullDataModel) then) =
      __$FullDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'city_id') String cityId,
      @JsonKey(name: 'province_id') String provinceId,
      @JsonKey(name: 'province') String province,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'city_name') String cityName,
      @JsonKey(name: 'postal_code') String postalCode});
}

/// @nodoc
class __$FullDataModelCopyWithImpl<$Res>
    extends _$FullDataModelCopyWithImpl<$Res>
    implements _$FullDataModelCopyWith<$Res> {
  __$FullDataModelCopyWithImpl(
      _FullDataModel _value, $Res Function(_FullDataModel) _then)
      : super(_value, (v) => _then(v as _FullDataModel));

  @override
  _FullDataModel get _value => super._value as _FullDataModel;

  @override
  $Res call({
    Object cityId = freezed,
    Object provinceId = freezed,
    Object province = freezed,
    Object type = freezed,
    Object cityName = freezed,
    Object postalCode = freezed,
  }) {
    return _then(_FullDataModel(
      cityId: cityId == freezed ? _value.cityId : cityId as String,
      provinceId:
          provinceId == freezed ? _value.provinceId : provinceId as String,
      province: province == freezed ? _value.province : province as String,
      type: type == freezed ? _value.type : type as String,
      cityName: cityName == freezed ? _value.cityName : cityName as String,
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FullDataModel implements _FullDataModel {
  _$_FullDataModel(
      {@JsonKey(name: 'city_id') this.cityId,
      @JsonKey(name: 'province_id') this.provinceId,
      @JsonKey(name: 'province') this.province,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'city_name') this.cityName,
      @JsonKey(name: 'postal_code') this.postalCode});

  factory _$_FullDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FullDataModelFromJson(json);

  @override
  @JsonKey(name: 'city_id')
  final String cityId;
  @override
  @JsonKey(name: 'province_id')
  final String provinceId;
  @override
  @JsonKey(name: 'province')
  final String province;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'city_name')
  final String cityName;
  @override
  @JsonKey(name: 'postal_code')
  final String postalCode;

  @override
  String toString() {
    return 'FullDataModel(cityId: $cityId, provinceId: $provinceId, province: $province, type: $type, cityName: $cityName, postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FullDataModel &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(provinceId) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(cityName) ^
      const DeepCollectionEquality().hash(postalCode);

  @JsonKey(ignore: true)
  @override
  _$FullDataModelCopyWith<_FullDataModel> get copyWith =>
      __$FullDataModelCopyWithImpl<_FullDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FullDataModelToJson(this);
  }
}

abstract class _FullDataModel implements FullDataModel {
  factory _FullDataModel(
      {@JsonKey(name: 'city_id') String cityId,
      @JsonKey(name: 'province_id') String provinceId,
      @JsonKey(name: 'province') String province,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'city_name') String cityName,
      @JsonKey(name: 'postal_code') String postalCode}) = _$_FullDataModel;

  factory _FullDataModel.fromJson(Map<String, dynamic> json) =
      _$_FullDataModel.fromJson;

  @override
  @JsonKey(name: 'city_id')
  String get cityId;
  @override
  @JsonKey(name: 'province_id')
  String get provinceId;
  @override
  @JsonKey(name: 'province')
  String get province;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'city_name')
  String get cityName;
  @override
  @JsonKey(name: 'postal_code')
  String get postalCode;
  @override
  @JsonKey(ignore: true)
  _$FullDataModelCopyWith<_FullDataModel> get copyWith;
}
