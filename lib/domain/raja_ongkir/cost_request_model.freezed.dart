// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cost_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostRequestModel _$CostRequestModelFromJson(Map<String, dynamic> json) {
  return _CostRequestModel.fromJson(json);
}

/// @nodoc
class _$CostRequestModelTearOff {
  const _$CostRequestModelTearOff();

  _CostRequestModel call(
      {String? origin,
      String? destination,
      String? originType,
      String? destinationType,
      double? weight,
      String? courier,
      List<OngkirCodeDataModel>? courirList}) {
    return _CostRequestModel(
      origin: origin,
      destination: destination,
      originType: originType,
      destinationType: destinationType,
      weight: weight,
      courier: courier,
      courirList: courirList,
    );
  }

  CostRequestModel fromJson(Map<String, Object> json) {
    return CostRequestModel.fromJson(json);
  }
}

/// @nodoc
const $CostRequestModel = _$CostRequestModelTearOff();

/// @nodoc
mixin _$CostRequestModel {
  String? get origin => throw _privateConstructorUsedError;
  String? get destination => throw _privateConstructorUsedError;
  String? get originType => throw _privateConstructorUsedError;
  String? get destinationType => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get courier => throw _privateConstructorUsedError;
  List<OngkirCodeDataModel>? get courirList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostRequestModelCopyWith<CostRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostRequestModelCopyWith<$Res> {
  factory $CostRequestModelCopyWith(
          CostRequestModel value, $Res Function(CostRequestModel) then) =
      _$CostRequestModelCopyWithImpl<$Res>;
  $Res call(
      {String? origin,
      String? destination,
      String? originType,
      String? destinationType,
      double? weight,
      String? courier,
      List<OngkirCodeDataModel>? courirList});
}

/// @nodoc
class _$CostRequestModelCopyWithImpl<$Res>
    implements $CostRequestModelCopyWith<$Res> {
  _$CostRequestModelCopyWithImpl(this._value, this._then);

  final CostRequestModel _value;
  // ignore: unused_field
  final $Res Function(CostRequestModel) _then;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? originType = freezed,
    Object? destinationType = freezed,
    Object? weight = freezed,
    Object? courier = freezed,
    Object? courirList = freezed,
  }) {
    return _then(_value.copyWith(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      originType: originType == freezed
          ? _value.originType
          : originType // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationType: destinationType == freezed
          ? _value.destinationType
          : destinationType // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String?,
      courirList: courirList == freezed
          ? _value.courirList
          : courirList // ignore: cast_nullable_to_non_nullable
              as List<OngkirCodeDataModel>?,
    ));
  }
}

/// @nodoc
abstract class _$CostRequestModelCopyWith<$Res>
    implements $CostRequestModelCopyWith<$Res> {
  factory _$CostRequestModelCopyWith(
          _CostRequestModel value, $Res Function(_CostRequestModel) then) =
      __$CostRequestModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? origin,
      String? destination,
      String? originType,
      String? destinationType,
      double? weight,
      String? courier,
      List<OngkirCodeDataModel>? courirList});
}

/// @nodoc
class __$CostRequestModelCopyWithImpl<$Res>
    extends _$CostRequestModelCopyWithImpl<$Res>
    implements _$CostRequestModelCopyWith<$Res> {
  __$CostRequestModelCopyWithImpl(
      _CostRequestModel _value, $Res Function(_CostRequestModel) _then)
      : super(_value, (v) => _then(v as _CostRequestModel));

  @override
  _CostRequestModel get _value => super._value as _CostRequestModel;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? originType = freezed,
    Object? destinationType = freezed,
    Object? weight = freezed,
    Object? courier = freezed,
    Object? courirList = freezed,
  }) {
    return _then(_CostRequestModel(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      originType: originType == freezed
          ? _value.originType
          : originType // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationType: destinationType == freezed
          ? _value.destinationType
          : destinationType // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String?,
      courirList: courirList == freezed
          ? _value.courirList
          : courirList // ignore: cast_nullable_to_non_nullable
              as List<OngkirCodeDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostRequestModel implements _CostRequestModel {
  _$_CostRequestModel(
      {this.origin,
      this.destination,
      this.originType,
      this.destinationType,
      this.weight,
      this.courier,
      this.courirList});

  factory _$_CostRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CostRequestModelFromJson(json);

  @override
  final String? origin;
  @override
  final String? destination;
  @override
  final String? originType;
  @override
  final String? destinationType;
  @override
  final double? weight;
  @override
  final String? courier;
  @override
  final List<OngkirCodeDataModel>? courirList;

  @override
  String toString() {
    return 'CostRequestModel(origin: $origin, destination: $destination, originType: $originType, destinationType: $destinationType, weight: $weight, courier: $courier, courirList: $courirList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CostRequestModel &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.originType, originType) ||
                const DeepCollectionEquality()
                    .equals(other.originType, originType)) &&
            (identical(other.destinationType, destinationType) ||
                const DeepCollectionEquality()
                    .equals(other.destinationType, destinationType)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.courier, courier) ||
                const DeepCollectionEquality()
                    .equals(other.courier, courier)) &&
            (identical(other.courirList, courirList) ||
                const DeepCollectionEquality()
                    .equals(other.courirList, courirList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(originType) ^
      const DeepCollectionEquality().hash(destinationType) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(courier) ^
      const DeepCollectionEquality().hash(courirList);

  @JsonKey(ignore: true)
  @override
  _$CostRequestModelCopyWith<_CostRequestModel> get copyWith =>
      __$CostRequestModelCopyWithImpl<_CostRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CostRequestModelToJson(this);
  }
}

abstract class _CostRequestModel implements CostRequestModel {
  factory _CostRequestModel(
      {String? origin,
      String? destination,
      String? originType,
      String? destinationType,
      double? weight,
      String? courier,
      List<OngkirCodeDataModel>? courirList}) = _$_CostRequestModel;

  factory _CostRequestModel.fromJson(Map<String, dynamic> json) =
      _$_CostRequestModel.fromJson;

  @override
  String? get origin => throw _privateConstructorUsedError;
  @override
  String? get destination => throw _privateConstructorUsedError;
  @override
  String? get originType => throw _privateConstructorUsedError;
  @override
  String? get destinationType => throw _privateConstructorUsedError;
  @override
  double? get weight => throw _privateConstructorUsedError;
  @override
  String? get courier => throw _privateConstructorUsedError;
  @override
  List<OngkirCodeDataModel>? get courirList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CostRequestModelCopyWith<_CostRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
