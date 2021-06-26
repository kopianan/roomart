// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'costs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Costs _$CostsFromJson(Map<String, dynamic> json) {
  return _Costs.fromJson(json);
}

/// @nodoc
class _$CostsTearOff {
  const _$CostsTearOff();

  _Costs call({String? service, String? description, List<Cost>? cost}) {
    return _Costs(
      service: service,
      description: description,
      cost: cost,
    );
  }

  Costs fromJson(Map<String, Object> json) {
    return Costs.fromJson(json);
  }
}

/// @nodoc
const $Costs = _$CostsTearOff();

/// @nodoc
mixin _$Costs {
  String? get service => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Cost>? get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostsCopyWith<Costs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostsCopyWith<$Res> {
  factory $CostsCopyWith(Costs value, $Res Function(Costs) then) =
      _$CostsCopyWithImpl<$Res>;
  $Res call({String? service, String? description, List<Cost>? cost});
}

/// @nodoc
class _$CostsCopyWithImpl<$Res> implements $CostsCopyWith<$Res> {
  _$CostsCopyWithImpl(this._value, this._then);

  final Costs _value;
  // ignore: unused_field
  final $Res Function(Costs) _then;

  @override
  $Res call({
    Object? service = freezed,
    Object? description = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<Cost>?,
    ));
  }
}

/// @nodoc
abstract class _$CostsCopyWith<$Res> implements $CostsCopyWith<$Res> {
  factory _$CostsCopyWith(_Costs value, $Res Function(_Costs) then) =
      __$CostsCopyWithImpl<$Res>;
  @override
  $Res call({String? service, String? description, List<Cost>? cost});
}

/// @nodoc
class __$CostsCopyWithImpl<$Res> extends _$CostsCopyWithImpl<$Res>
    implements _$CostsCopyWith<$Res> {
  __$CostsCopyWithImpl(_Costs _value, $Res Function(_Costs) _then)
      : super(_value, (v) => _then(v as _Costs));

  @override
  _Costs get _value => super._value as _Costs;

  @override
  $Res call({
    Object? service = freezed,
    Object? description = freezed,
    Object? cost = freezed,
  }) {
    return _then(_Costs(
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<Cost>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Costs implements _Costs {
  _$_Costs({this.service, this.description, this.cost});

  factory _$_Costs.fromJson(Map<String, dynamic> json) =>
      _$_$_CostsFromJson(json);

  @override
  final String? service;
  @override
  final String? description;
  @override
  final List<Cost>? cost;

  @override
  String toString() {
    return 'Costs(service: $service, description: $description, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Costs &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(cost);

  @JsonKey(ignore: true)
  @override
  _$CostsCopyWith<_Costs> get copyWith =>
      __$CostsCopyWithImpl<_Costs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CostsToJson(this);
  }
}

abstract class _Costs implements Costs {
  factory _Costs({String? service, String? description, List<Cost>? cost}) =
      _$_Costs;

  factory _Costs.fromJson(Map<String, dynamic> json) = _$_Costs.fromJson;

  @override
  String? get service => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  List<Cost>? get cost => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CostsCopyWith<_Costs> get copyWith => throw _privateConstructorUsedError;
}
