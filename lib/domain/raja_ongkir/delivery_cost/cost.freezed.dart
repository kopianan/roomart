// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cost _$CostFromJson(Map<String, dynamic> json) {
  return _Cost.fromJson(json);
}

/// @nodoc
class _$CostTearOff {
  const _$CostTearOff();

  _Cost call({int? value, String? etd, String? note}) {
    return _Cost(
      value: value,
      etd: etd,
      note: note,
    );
  }

  Cost fromJson(Map<String, Object> json) {
    return Cost.fromJson(json);
  }
}

/// @nodoc
const $Cost = _$CostTearOff();

/// @nodoc
mixin _$Cost {
  int? get value => throw _privateConstructorUsedError;
  String? get etd => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostCopyWith<Cost> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostCopyWith<$Res> {
  factory $CostCopyWith(Cost value, $Res Function(Cost) then) =
      _$CostCopyWithImpl<$Res>;
  $Res call({int? value, String? etd, String? note});
}

/// @nodoc
class _$CostCopyWithImpl<$Res> implements $CostCopyWith<$Res> {
  _$CostCopyWithImpl(this._value, this._then);

  final Cost _value;
  // ignore: unused_field
  final $Res Function(Cost) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? etd = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      etd: etd == freezed
          ? _value.etd
          : etd // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CostCopyWith<$Res> implements $CostCopyWith<$Res> {
  factory _$CostCopyWith(_Cost value, $Res Function(_Cost) then) =
      __$CostCopyWithImpl<$Res>;
  @override
  $Res call({int? value, String? etd, String? note});
}

/// @nodoc
class __$CostCopyWithImpl<$Res> extends _$CostCopyWithImpl<$Res>
    implements _$CostCopyWith<$Res> {
  __$CostCopyWithImpl(_Cost _value, $Res Function(_Cost) _then)
      : super(_value, (v) => _then(v as _Cost));

  @override
  _Cost get _value => super._value as _Cost;

  @override
  $Res call({
    Object? value = freezed,
    Object? etd = freezed,
    Object? note = freezed,
  }) {
    return _then(_Cost(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      etd: etd == freezed
          ? _value.etd
          : etd // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cost implements _Cost {
  _$_Cost({this.value, this.etd, this.note});

  factory _$_Cost.fromJson(Map<String, dynamic> json) =>
      _$_$_CostFromJson(json);

  @override
  final int? value;
  @override
  final String? etd;
  @override
  final String? note;

  @override
  String toString() {
    return 'Cost(value: $value, etd: $etd, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cost &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.etd, etd) ||
                const DeepCollectionEquality().equals(other.etd, etd)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(etd) ^
      const DeepCollectionEquality().hash(note);

  @JsonKey(ignore: true)
  @override
  _$CostCopyWith<_Cost> get copyWith =>
      __$CostCopyWithImpl<_Cost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CostToJson(this);
  }
}

abstract class _Cost implements Cost {
  factory _Cost({int? value, String? etd, String? note}) = _$_Cost;

  factory _Cost.fromJson(Map<String, dynamic> json) = _$_Cost.fromJson;

  @override
  int? get value => throw _privateConstructorUsedError;
  @override
  String? get etd => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CostCopyWith<_Cost> get copyWith => throw _privateConstructorUsedError;
}
