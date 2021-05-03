// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ongkir_code_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OngkirCodeDataModel _$OngkirCodeDataModelFromJson(Map<String, dynamic> json) {
  return _OngkirCodeDataModel.fromJson(json);
}

/// @nodoc
class _$OngkirCodeDataModelTearOff {
  const _$OngkirCodeDataModelTearOff();

// ignore: unused_element
  _OngkirCodeDataModel call(
      {String id, String code, String label, String name}) {
    return _OngkirCodeDataModel(
      id: id,
      code: code,
      label: label,
      name: name,
    );
  }

// ignore: unused_element
  OngkirCodeDataModel fromJson(Map<String, Object> json) {
    return OngkirCodeDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $OngkirCodeDataModel = _$OngkirCodeDataModelTearOff();

/// @nodoc
mixin _$OngkirCodeDataModel {
  String get id;
  String get code;
  String get label;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $OngkirCodeDataModelCopyWith<OngkirCodeDataModel> get copyWith;
}

/// @nodoc
abstract class $OngkirCodeDataModelCopyWith<$Res> {
  factory $OngkirCodeDataModelCopyWith(
          OngkirCodeDataModel value, $Res Function(OngkirCodeDataModel) then) =
      _$OngkirCodeDataModelCopyWithImpl<$Res>;
  $Res call({String id, String code, String label, String name});
}

/// @nodoc
class _$OngkirCodeDataModelCopyWithImpl<$Res>
    implements $OngkirCodeDataModelCopyWith<$Res> {
  _$OngkirCodeDataModelCopyWithImpl(this._value, this._then);

  final OngkirCodeDataModel _value;
  // ignore: unused_field
  final $Res Function(OngkirCodeDataModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object code = freezed,
    Object label = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      code: code == freezed ? _value.code : code as String,
      label: label == freezed ? _value.label : label as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$OngkirCodeDataModelCopyWith<$Res>
    implements $OngkirCodeDataModelCopyWith<$Res> {
  factory _$OngkirCodeDataModelCopyWith(_OngkirCodeDataModel value,
          $Res Function(_OngkirCodeDataModel) then) =
      __$OngkirCodeDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String code, String label, String name});
}

/// @nodoc
class __$OngkirCodeDataModelCopyWithImpl<$Res>
    extends _$OngkirCodeDataModelCopyWithImpl<$Res>
    implements _$OngkirCodeDataModelCopyWith<$Res> {
  __$OngkirCodeDataModelCopyWithImpl(
      _OngkirCodeDataModel _value, $Res Function(_OngkirCodeDataModel) _then)
      : super(_value, (v) => _then(v as _OngkirCodeDataModel));

  @override
  _OngkirCodeDataModel get _value => super._value as _OngkirCodeDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object code = freezed,
    Object label = freezed,
    Object name = freezed,
  }) {
    return _then(_OngkirCodeDataModel(
      id: id == freezed ? _value.id : id as String,
      code: code == freezed ? _value.code : code as String,
      label: label == freezed ? _value.label : label as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OngkirCodeDataModel implements _OngkirCodeDataModel {
  _$_OngkirCodeDataModel({this.id, this.code, this.label, this.name});

  factory _$_OngkirCodeDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_OngkirCodeDataModelFromJson(json);

  @override
  final String id;
  @override
  final String code;
  @override
  final String label;
  @override
  final String name;

  @override
  String toString() {
    return 'OngkirCodeDataModel(id: $id, code: $code, label: $label, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OngkirCodeDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$OngkirCodeDataModelCopyWith<_OngkirCodeDataModel> get copyWith =>
      __$OngkirCodeDataModelCopyWithImpl<_OngkirCodeDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OngkirCodeDataModelToJson(this);
  }
}

abstract class _OngkirCodeDataModel implements OngkirCodeDataModel {
  factory _OngkirCodeDataModel(
      {String id,
      String code,
      String label,
      String name}) = _$_OngkirCodeDataModel;

  factory _OngkirCodeDataModel.fromJson(Map<String, dynamic> json) =
      _$_OngkirCodeDataModel.fromJson;

  @override
  String get id;
  @override
  String get code;
  @override
  String get label;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$OngkirCodeDataModelCopyWith<_OngkirCodeDataModel> get copyWith;
}
