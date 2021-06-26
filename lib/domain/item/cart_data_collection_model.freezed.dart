// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_data_collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartDataCollectionModel _$CartDataCollectionModelFromJson(
    Map<String, dynamic> json) {
  return _CartDataCollectionModel.fromJson(json);
}

/// @nodoc
class _$CartDataCollectionModelTearOff {
  const _$CartDataCollectionModelTearOff();

  _CartDataCollectionModel call(
      {BoughtItemDataModel? bought, DataItemModel? item}) {
    return _CartDataCollectionModel(
      bought: bought,
      item: item,
    );
  }

  CartDataCollectionModel fromJson(Map<String, Object> json) {
    return CartDataCollectionModel.fromJson(json);
  }
}

/// @nodoc
const $CartDataCollectionModel = _$CartDataCollectionModelTearOff();

/// @nodoc
mixin _$CartDataCollectionModel {
  BoughtItemDataModel? get bought => throw _privateConstructorUsedError;
  DataItemModel? get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDataCollectionModelCopyWith<CartDataCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDataCollectionModelCopyWith<$Res> {
  factory $CartDataCollectionModelCopyWith(CartDataCollectionModel value,
          $Res Function(CartDataCollectionModel) then) =
      _$CartDataCollectionModelCopyWithImpl<$Res>;
  $Res call({BoughtItemDataModel? bought, DataItemModel? item});

  $BoughtItemDataModelCopyWith<$Res>? get bought;
  $DataItemModelCopyWith<$Res>? get item;
}

/// @nodoc
class _$CartDataCollectionModelCopyWithImpl<$Res>
    implements $CartDataCollectionModelCopyWith<$Res> {
  _$CartDataCollectionModelCopyWithImpl(this._value, this._then);

  final CartDataCollectionModel _value;
  // ignore: unused_field
  final $Res Function(CartDataCollectionModel) _then;

  @override
  $Res call({
    Object? bought = freezed,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      bought: bought == freezed
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as BoughtItemDataModel?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as DataItemModel?,
    ));
  }

  @override
  $BoughtItemDataModelCopyWith<$Res>? get bought {
    if (_value.bought == null) {
      return null;
    }

    return $BoughtItemDataModelCopyWith<$Res>(_value.bought!, (value) {
      return _then(_value.copyWith(bought: value));
    });
  }

  @override
  $DataItemModelCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $DataItemModelCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$CartDataCollectionModelCopyWith<$Res>
    implements $CartDataCollectionModelCopyWith<$Res> {
  factory _$CartDataCollectionModelCopyWith(_CartDataCollectionModel value,
          $Res Function(_CartDataCollectionModel) then) =
      __$CartDataCollectionModelCopyWithImpl<$Res>;
  @override
  $Res call({BoughtItemDataModel? bought, DataItemModel? item});

  @override
  $BoughtItemDataModelCopyWith<$Res>? get bought;
  @override
  $DataItemModelCopyWith<$Res>? get item;
}

/// @nodoc
class __$CartDataCollectionModelCopyWithImpl<$Res>
    extends _$CartDataCollectionModelCopyWithImpl<$Res>
    implements _$CartDataCollectionModelCopyWith<$Res> {
  __$CartDataCollectionModelCopyWithImpl(_CartDataCollectionModel _value,
      $Res Function(_CartDataCollectionModel) _then)
      : super(_value, (v) => _then(v as _CartDataCollectionModel));

  @override
  _CartDataCollectionModel get _value =>
      super._value as _CartDataCollectionModel;

  @override
  $Res call({
    Object? bought = freezed,
    Object? item = freezed,
  }) {
    return _then(_CartDataCollectionModel(
      bought: bought == freezed
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as BoughtItemDataModel?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as DataItemModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartDataCollectionModel implements _CartDataCollectionModel {
  _$_CartDataCollectionModel({this.bought, this.item});

  factory _$_CartDataCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CartDataCollectionModelFromJson(json);

  @override
  final BoughtItemDataModel? bought;
  @override
  final DataItemModel? item;

  @override
  String toString() {
    return 'CartDataCollectionModel(bought: $bought, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartDataCollectionModel &&
            (identical(other.bought, bought) ||
                const DeepCollectionEquality().equals(other.bought, bought)) &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bought) ^
      const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$CartDataCollectionModelCopyWith<_CartDataCollectionModel> get copyWith =>
      __$CartDataCollectionModelCopyWithImpl<_CartDataCollectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartDataCollectionModelToJson(this);
  }
}

abstract class _CartDataCollectionModel implements CartDataCollectionModel {
  factory _CartDataCollectionModel(
      {BoughtItemDataModel? bought,
      DataItemModel? item}) = _$_CartDataCollectionModel;

  factory _CartDataCollectionModel.fromJson(Map<String, dynamic> json) =
      _$_CartDataCollectionModel.fromJson;

  @override
  BoughtItemDataModel? get bought => throw _privateConstructorUsedError;
  @override
  DataItemModel? get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartDataCollectionModelCopyWith<_CartDataCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
