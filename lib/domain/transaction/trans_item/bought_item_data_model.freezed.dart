// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bought_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BoughtItemDataModel _$BoughtItemDataModelFromJson(Map<String, dynamic> json) {
  return _BoughtItemDataModel.fromJson(json);
}

/// @nodoc
class _$BoughtItemDataModelTearOff {
  const _$BoughtItemDataModelTearOff();

// ignore: unused_element
  _BoughtItemDataModel call(
      {@JsonKey(name: 'item_code') String itemCode,
      @JsonKey(name: 'item_id') String itemId,
      @JsonKey(name: 'qty') String qty,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'tax') String tax,
      @JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'reseller_price') double resellerPrice,
      @JsonKey(name: 'itemImage') String itemImage,
      @JsonKey(name: 'discount') String discount}) {
    return _BoughtItemDataModel(
      itemCode: itemCode,
      itemId: itemId,
      qty: qty,
      unit: unit,
      price: price,
      tax: tax,
      itemName: itemName,
      resellerPrice: resellerPrice,
      itemImage: itemImage,
      discount: discount,
    );
  }

// ignore: unused_element
  BoughtItemDataModel fromJson(Map<String, Object> json) {
    return BoughtItemDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BoughtItemDataModel = _$BoughtItemDataModelTearOff();

/// @nodoc
mixin _$BoughtItemDataModel {
  @JsonKey(name: 'item_code')
  String get itemCode;
  @JsonKey(name: 'item_id')
  String get itemId;
  @JsonKey(name: 'qty')
  String get qty;
  @JsonKey(name: 'unit')
  String get unit;
  @JsonKey(name: 'price')
  String get price;
  @JsonKey(name: 'tax')
  String get tax;
  @JsonKey(name: 'item_name')
  String get itemName;
  @JsonKey(name: 'reseller_price')
  double get resellerPrice;
  @JsonKey(name: 'itemImage')
  String get itemImage;
  @JsonKey(name: 'discount')
  String get discount;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BoughtItemDataModelCopyWith<BoughtItemDataModel> get copyWith;
}

/// @nodoc
abstract class $BoughtItemDataModelCopyWith<$Res> {
  factory $BoughtItemDataModelCopyWith(
          BoughtItemDataModel value, $Res Function(BoughtItemDataModel) then) =
      _$BoughtItemDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'item_code') String itemCode,
      @JsonKey(name: 'item_id') String itemId,
      @JsonKey(name: 'qty') String qty,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'tax') String tax,
      @JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'reseller_price') double resellerPrice,
      @JsonKey(name: 'itemImage') String itemImage,
      @JsonKey(name: 'discount') String discount});
}

/// @nodoc
class _$BoughtItemDataModelCopyWithImpl<$Res>
    implements $BoughtItemDataModelCopyWith<$Res> {
  _$BoughtItemDataModelCopyWithImpl(this._value, this._then);

  final BoughtItemDataModel _value;
  // ignore: unused_field
  final $Res Function(BoughtItemDataModel) _then;

  @override
  $Res call({
    Object itemCode = freezed,
    Object itemId = freezed,
    Object qty = freezed,
    Object unit = freezed,
    Object price = freezed,
    Object tax = freezed,
    Object itemName = freezed,
    Object resellerPrice = freezed,
    Object itemImage = freezed,
    Object discount = freezed,
  }) {
    return _then(_value.copyWith(
      itemCode: itemCode == freezed ? _value.itemCode : itemCode as String,
      itemId: itemId == freezed ? _value.itemId : itemId as String,
      qty: qty == freezed ? _value.qty : qty as String,
      unit: unit == freezed ? _value.unit : unit as String,
      price: price == freezed ? _value.price : price as String,
      tax: tax == freezed ? _value.tax : tax as String,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      resellerPrice: resellerPrice == freezed
          ? _value.resellerPrice
          : resellerPrice as double,
      itemImage: itemImage == freezed ? _value.itemImage : itemImage as String,
      discount: discount == freezed ? _value.discount : discount as String,
    ));
  }
}

/// @nodoc
abstract class _$BoughtItemDataModelCopyWith<$Res>
    implements $BoughtItemDataModelCopyWith<$Res> {
  factory _$BoughtItemDataModelCopyWith(_BoughtItemDataModel value,
          $Res Function(_BoughtItemDataModel) then) =
      __$BoughtItemDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'item_code') String itemCode,
      @JsonKey(name: 'item_id') String itemId,
      @JsonKey(name: 'qty') String qty,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'tax') String tax,
      @JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'reseller_price') double resellerPrice,
      @JsonKey(name: 'itemImage') String itemImage,
      @JsonKey(name: 'discount') String discount});
}

/// @nodoc
class __$BoughtItemDataModelCopyWithImpl<$Res>
    extends _$BoughtItemDataModelCopyWithImpl<$Res>
    implements _$BoughtItemDataModelCopyWith<$Res> {
  __$BoughtItemDataModelCopyWithImpl(
      _BoughtItemDataModel _value, $Res Function(_BoughtItemDataModel) _then)
      : super(_value, (v) => _then(v as _BoughtItemDataModel));

  @override
  _BoughtItemDataModel get _value => super._value as _BoughtItemDataModel;

  @override
  $Res call({
    Object itemCode = freezed,
    Object itemId = freezed,
    Object qty = freezed,
    Object unit = freezed,
    Object price = freezed,
    Object tax = freezed,
    Object itemName = freezed,
    Object resellerPrice = freezed,
    Object itemImage = freezed,
    Object discount = freezed,
  }) {
    return _then(_BoughtItemDataModel(
      itemCode: itemCode == freezed ? _value.itemCode : itemCode as String,
      itemId: itemId == freezed ? _value.itemId : itemId as String,
      qty: qty == freezed ? _value.qty : qty as String,
      unit: unit == freezed ? _value.unit : unit as String,
      price: price == freezed ? _value.price : price as String,
      tax: tax == freezed ? _value.tax : tax as String,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      resellerPrice: resellerPrice == freezed
          ? _value.resellerPrice
          : resellerPrice as double,
      itemImage: itemImage == freezed ? _value.itemImage : itemImage as String,
      discount: discount == freezed ? _value.discount : discount as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BoughtItemDataModel implements _BoughtItemDataModel {
  _$_BoughtItemDataModel(
      {@JsonKey(name: 'item_code') this.itemCode,
      @JsonKey(name: 'item_id') this.itemId,
      @JsonKey(name: 'qty') this.qty,
      @JsonKey(name: 'unit') this.unit,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'tax') this.tax,
      @JsonKey(name: 'item_name') this.itemName,
      @JsonKey(name: 'reseller_price') this.resellerPrice,
      @JsonKey(name: 'itemImage') this.itemImage,
      @JsonKey(name: 'discount') this.discount});

  factory _$_BoughtItemDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BoughtItemDataModelFromJson(json);

  @override
  @JsonKey(name: 'item_code')
  final String itemCode;
  @override
  @JsonKey(name: 'item_id')
  final String itemId;
  @override
  @JsonKey(name: 'qty')
  final String qty;
  @override
  @JsonKey(name: 'unit')
  final String unit;
  @override
  @JsonKey(name: 'price')
  final String price;
  @override
  @JsonKey(name: 'tax')
  final String tax;
  @override
  @JsonKey(name: 'item_name')
  final String itemName;
  @override
  @JsonKey(name: 'reseller_price')
  final double resellerPrice;
  @override
  @JsonKey(name: 'itemImage')
  final String itemImage;
  @override
  @JsonKey(name: 'discount')
  final String discount;

  @override
  String toString() {
    return 'BoughtItemDataModel(itemCode: $itemCode, itemId: $itemId, qty: $qty, unit: $unit, price: $price, tax: $tax, itemName: $itemName, resellerPrice: $resellerPrice, itemImage: $itemImage, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoughtItemDataModel &&
            (identical(other.itemCode, itemCode) ||
                const DeepCollectionEquality()
                    .equals(other.itemCode, itemCode)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.tax, tax) ||
                const DeepCollectionEquality().equals(other.tax, tax)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.resellerPrice, resellerPrice) ||
                const DeepCollectionEquality()
                    .equals(other.resellerPrice, resellerPrice)) &&
            (identical(other.itemImage, itemImage) ||
                const DeepCollectionEquality()
                    .equals(other.itemImage, itemImage)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemCode) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(tax) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(resellerPrice) ^
      const DeepCollectionEquality().hash(itemImage) ^
      const DeepCollectionEquality().hash(discount);

  @JsonKey(ignore: true)
  @override
  _$BoughtItemDataModelCopyWith<_BoughtItemDataModel> get copyWith =>
      __$BoughtItemDataModelCopyWithImpl<_BoughtItemDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BoughtItemDataModelToJson(this);
  }
}

abstract class _BoughtItemDataModel implements BoughtItemDataModel {
  factory _BoughtItemDataModel(
      {@JsonKey(name: 'item_code') String itemCode,
      @JsonKey(name: 'item_id') String itemId,
      @JsonKey(name: 'qty') String qty,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'tax') String tax,
      @JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'reseller_price') double resellerPrice,
      @JsonKey(name: 'itemImage') String itemImage,
      @JsonKey(name: 'discount') String discount}) = _$_BoughtItemDataModel;

  factory _BoughtItemDataModel.fromJson(Map<String, dynamic> json) =
      _$_BoughtItemDataModel.fromJson;

  @override
  @JsonKey(name: 'item_code')
  String get itemCode;
  @override
  @JsonKey(name: 'item_id')
  String get itemId;
  @override
  @JsonKey(name: 'qty')
  String get qty;
  @override
  @JsonKey(name: 'unit')
  String get unit;
  @override
  @JsonKey(name: 'price')
  String get price;
  @override
  @JsonKey(name: 'tax')
  String get tax;
  @override
  @JsonKey(name: 'item_name')
  String get itemName;
  @override
  @JsonKey(name: 'reseller_price')
  double get resellerPrice;
  @override
  @JsonKey(name: 'itemImage')
  String get itemImage;
  @override
  @JsonKey(name: 'discount')
  String get discount;
  @override
  @JsonKey(ignore: true)
  _$BoughtItemDataModelCopyWith<_BoughtItemDataModel> get copyWith;
}
