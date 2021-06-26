// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cost_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostDataModel _$CostDataModelFromJson(Map<String, dynamic> json) {
  return _CostDataModel.fromJson(json);
}

/// @nodoc
class _$CostDataModelTearOff {
  const _$CostDataModelTearOff();

  _CostDataModel call({String? code, String? name, List<Costs>? costs}) {
    return _CostDataModel(
      code: code,
      name: name,
      costs: costs,
    );
  }

  CostDataModel fromJson(Map<String, Object> json) {
    return CostDataModel.fromJson(json);
  }
}

/// @nodoc
const $CostDataModel = _$CostDataModelTearOff();

/// @nodoc
mixin _$CostDataModel {
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<Costs>? get costs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostDataModelCopyWith<CostDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostDataModelCopyWith<$Res> {
  factory $CostDataModelCopyWith(
          CostDataModel value, $Res Function(CostDataModel) then) =
      _$CostDataModelCopyWithImpl<$Res>;
  $Res call({String? code, String? name, List<Costs>? costs});
}

/// @nodoc
class _$CostDataModelCopyWithImpl<$Res>
    implements $CostDataModelCopyWith<$Res> {
  _$CostDataModelCopyWithImpl(this._value, this._then);

  final CostDataModel _value;
  // ignore: unused_field
  final $Res Function(CostDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? costs = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      costs: costs == freezed
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as List<Costs>?,
    ));
  }
}

/// @nodoc
abstract class _$CostDataModelCopyWith<$Res>
    implements $CostDataModelCopyWith<$Res> {
  factory _$CostDataModelCopyWith(
          _CostDataModel value, $Res Function(_CostDataModel) then) =
      __$CostDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String? code, String? name, List<Costs>? costs});
}

/// @nodoc
class __$CostDataModelCopyWithImpl<$Res>
    extends _$CostDataModelCopyWithImpl<$Res>
    implements _$CostDataModelCopyWith<$Res> {
  __$CostDataModelCopyWithImpl(
      _CostDataModel _value, $Res Function(_CostDataModel) _then)
      : super(_value, (v) => _then(v as _CostDataModel));

  @override
  _CostDataModel get _value => super._value as _CostDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? costs = freezed,
  }) {
    return _then(_CostDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      costs: costs == freezed
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as List<Costs>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostDataModel implements _CostDataModel {
  _$_CostDataModel({this.code, this.name, this.costs});

  factory _$_CostDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CostDataModelFromJson(json);

  @override
  final String? code;
  @override
  final String? name;
  @override
  final List<Costs>? costs;

  @override
  String toString() {
    return 'CostDataModel(code: $code, name: $name, costs: $costs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CostDataModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.costs, costs) ||
                const DeepCollectionEquality().equals(other.costs, costs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(costs);

  @JsonKey(ignore: true)
  @override
  _$CostDataModelCopyWith<_CostDataModel> get copyWith =>
      __$CostDataModelCopyWithImpl<_CostDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CostDataModelToJson(this);
  }
}

abstract class _CostDataModel implements CostDataModel {
  factory _CostDataModel({String? code, String? name, List<Costs>? costs}) =
      _$_CostDataModel;

  factory _CostDataModel.fromJson(Map<String, dynamic> json) =
      _$_CostDataModel.fromJson;

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  List<Costs>? get costs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CostDataModelCopyWith<_CostDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
