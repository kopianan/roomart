// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'province_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProvinceDataModel _$ProvinceDataModelFromJson(Map<String, dynamic> json) {
  return _ProvinceDataModel.fromJson(json);
}

/// @nodoc
class _$ProvinceDataModelTearOff {
  const _$ProvinceDataModelTearOff();

// ignore: unused_element
  _ProvinceDataModel call(
      {@JsonKey(name: "province_id") String provinceId,
      @JsonKey(name: "province") String province}) {
    return _ProvinceDataModel(
      provinceId: provinceId,
      province: province,
    );
  }

// ignore: unused_element
  ProvinceDataModel fromJson(Map<String, Object> json) {
    return ProvinceDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProvinceDataModel = _$ProvinceDataModelTearOff();

/// @nodoc
mixin _$ProvinceDataModel {
  @JsonKey(name: "province_id")
  String get provinceId;
  @JsonKey(name: "province")
  String get province;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProvinceDataModelCopyWith<ProvinceDataModel> get copyWith;
}

/// @nodoc
abstract class $ProvinceDataModelCopyWith<$Res> {
  factory $ProvinceDataModelCopyWith(
          ProvinceDataModel value, $Res Function(ProvinceDataModel) then) =
      _$ProvinceDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "province_id") String provinceId,
      @JsonKey(name: "province") String province});
}

/// @nodoc
class _$ProvinceDataModelCopyWithImpl<$Res>
    implements $ProvinceDataModelCopyWith<$Res> {
  _$ProvinceDataModelCopyWithImpl(this._value, this._then);

  final ProvinceDataModel _value;
  // ignore: unused_field
  final $Res Function(ProvinceDataModel) _then;

  @override
  $Res call({
    Object provinceId = freezed,
    Object province = freezed,
  }) {
    return _then(_value.copyWith(
      provinceId:
          provinceId == freezed ? _value.provinceId : provinceId as String,
      province: province == freezed ? _value.province : province as String,
    ));
  }
}

/// @nodoc
abstract class _$ProvinceDataModelCopyWith<$Res>
    implements $ProvinceDataModelCopyWith<$Res> {
  factory _$ProvinceDataModelCopyWith(
          _ProvinceDataModel value, $Res Function(_ProvinceDataModel) then) =
      __$ProvinceDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "province_id") String provinceId,
      @JsonKey(name: "province") String province});
}

/// @nodoc
class __$ProvinceDataModelCopyWithImpl<$Res>
    extends _$ProvinceDataModelCopyWithImpl<$Res>
    implements _$ProvinceDataModelCopyWith<$Res> {
  __$ProvinceDataModelCopyWithImpl(
      _ProvinceDataModel _value, $Res Function(_ProvinceDataModel) _then)
      : super(_value, (v) => _then(v as _ProvinceDataModel));

  @override
  _ProvinceDataModel get _value => super._value as _ProvinceDataModel;

  @override
  $Res call({
    Object provinceId = freezed,
    Object province = freezed,
  }) {
    return _then(_ProvinceDataModel(
      provinceId:
          provinceId == freezed ? _value.provinceId : provinceId as String,
      province: province == freezed ? _value.province : province as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProvinceDataModel implements _ProvinceDataModel {
  _$_ProvinceDataModel(
      {@JsonKey(name: "province_id") this.provinceId,
      @JsonKey(name: "province") this.province});

  factory _$_ProvinceDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProvinceDataModelFromJson(json);

  @override
  @JsonKey(name: "province_id")
  final String provinceId;
  @override
  @JsonKey(name: "province")
  final String province;

  @override
  String toString() {
    return 'ProvinceDataModel(provinceId: $provinceId, province: $province)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProvinceDataModel &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provinceId) ^
      const DeepCollectionEquality().hash(province);

  @JsonKey(ignore: true)
  @override
  _$ProvinceDataModelCopyWith<_ProvinceDataModel> get copyWith =>
      __$ProvinceDataModelCopyWithImpl<_ProvinceDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProvinceDataModelToJson(this);
  }
}

abstract class _ProvinceDataModel implements ProvinceDataModel {
  factory _ProvinceDataModel(
      {@JsonKey(name: "province_id") String provinceId,
      @JsonKey(name: "province") String province}) = _$_ProvinceDataModel;

  factory _ProvinceDataModel.fromJson(Map<String, dynamic> json) =
      _$_ProvinceDataModel.fromJson;

  @override
  @JsonKey(name: "province_id")
  String get provinceId;
  @override
  @JsonKey(name: "province")
  String get province;
  @override
  @JsonKey(ignore: true)
  _$ProvinceDataModelCopyWith<_ProvinceDataModel> get copyWith;
}
