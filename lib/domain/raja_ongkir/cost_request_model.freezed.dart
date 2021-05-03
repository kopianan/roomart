// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cost_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CostRequestModel _$CostRequestModelFromJson(Map<String, dynamic> json) {
  return _CostRequestModel.fromJson(json);
}

/// @nodoc
class _$CostRequestModelTearOff {
  const _$CostRequestModelTearOff();

// ignore: unused_element
  _CostRequestModel call(
      {String origin,
      String destination,
      String originType,
      String destinationType,
      double weight,
      String courier,
      List<OngkirCodeDataModel> courirList}) {
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

// ignore: unused_element
  CostRequestModel fromJson(Map<String, Object> json) {
    return CostRequestModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CostRequestModel = _$CostRequestModelTearOff();

/// @nodoc
mixin _$CostRequestModel {
  String get origin;
  String get destination;
  String get originType;
  String get destinationType;
  double get weight;
  String get courier;
  List<OngkirCodeDataModel> get courirList;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CostRequestModelCopyWith<CostRequestModel> get copyWith;
}

/// @nodoc
abstract class $CostRequestModelCopyWith<$Res> {
  factory $CostRequestModelCopyWith(
          CostRequestModel value, $Res Function(CostRequestModel) then) =
      _$CostRequestModelCopyWithImpl<$Res>;
  $Res call(
      {String origin,
      String destination,
      String originType,
      String destinationType,
      double weight,
      String courier,
      List<OngkirCodeDataModel> courirList});
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
    Object origin = freezed,
    Object destination = freezed,
    Object originType = freezed,
    Object destinationType = freezed,
    Object weight = freezed,
    Object courier = freezed,
    Object courirList = freezed,
  }) {
    return _then(_value.copyWith(
      origin: origin == freezed ? _value.origin : origin as String,
      destination:
          destination == freezed ? _value.destination : destination as String,
      originType:
          originType == freezed ? _value.originType : originType as String,
      destinationType: destinationType == freezed
          ? _value.destinationType
          : destinationType as String,
      weight: weight == freezed ? _value.weight : weight as double,
      courier: courier == freezed ? _value.courier : courier as String,
      courirList: courirList == freezed
          ? _value.courirList
          : courirList as List<OngkirCodeDataModel>,
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
      {String origin,
      String destination,
      String originType,
      String destinationType,
      double weight,
      String courier,
      List<OngkirCodeDataModel> courirList});
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
    Object origin = freezed,
    Object destination = freezed,
    Object originType = freezed,
    Object destinationType = freezed,
    Object weight = freezed,
    Object courier = freezed,
    Object courirList = freezed,
  }) {
    return _then(_CostRequestModel(
      origin: origin == freezed ? _value.origin : origin as String,
      destination:
          destination == freezed ? _value.destination : destination as String,
      originType:
          originType == freezed ? _value.originType : originType as String,
      destinationType: destinationType == freezed
          ? _value.destinationType
          : destinationType as String,
      weight: weight == freezed ? _value.weight : weight as double,
      courier: courier == freezed ? _value.courier : courier as String,
      courirList: courirList == freezed
          ? _value.courirList
          : courirList as List<OngkirCodeDataModel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
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
  final String origin;
  @override
  final String destination;
  @override
  final String originType;
  @override
  final String destinationType;
  @override
  final double weight;
  @override
  final String courier;
  @override
  final List<OngkirCodeDataModel> courirList;

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
      {String origin,
      String destination,
      String originType,
      String destinationType,
      double weight,
      String courier,
      List<OngkirCodeDataModel> courirList}) = _$_CostRequestModel;

  factory _CostRequestModel.fromJson(Map<String, dynamic> json) =
      _$_CostRequestModel.fromJson;

  @override
  String get origin;
  @override
  String get destination;
  @override
  String get originType;
  @override
  String get destinationType;
  @override
  double get weight;
  @override
  String get courier;
  @override
  List<OngkirCodeDataModel> get courirList;
  @override
  @JsonKey(ignore: true)
  _$CostRequestModelCopyWith<_CostRequestModel> get copyWith;
}
