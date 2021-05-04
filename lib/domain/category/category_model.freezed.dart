// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
class _$CategoryModelTearOff {
  const _$CategoryModelTearOff();

// ignore: unused_element
  _CategoryModel call(
      {@JsonKey(name: "kategori_id") String kategoriId,
      @JsonKey(name: "parent_id") String parentId,
      @JsonKey(name: "internal_code") String internalCode,
      @JsonKey(name: "kategori_code") String kategoriCode,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "picture") String picture,
      @JsonKey(name: "display_store") String displayStore,
      @JsonKey(name: "has_child") String hasChild,
      @JsonKey(name: "count") String count,
      @JsonKey(name: "count_total", defaultValue: "0") String countTotal}) {
    return _CategoryModel(
      kategoriId: kategoriId,
      parentId: parentId,
      internalCode: internalCode,
      kategoriCode: kategoriCode,
      description: description,
      picture: picture,
      displayStore: displayStore,
      hasChild: hasChild,
      count: count,
      countTotal: countTotal,
    );
  }

// ignore: unused_element
  CategoryModel fromJson(Map<String, Object> json) {
    return CategoryModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryModel = _$CategoryModelTearOff();

/// @nodoc
mixin _$CategoryModel {
  @JsonKey(name: "kategori_id")
  String get kategoriId;
  @JsonKey(name: "parent_id")
  String get parentId;
  @JsonKey(name: "internal_code")
  String get internalCode;
  @JsonKey(name: "kategori_code")
  String get kategoriCode;
  @JsonKey(name: "description")
  String get description;
  @JsonKey(name: "picture")
  String get picture;
  @JsonKey(name: "display_store")
  String get displayStore;
  @JsonKey(name: "has_child")
  String get hasChild;
  @JsonKey(name: "count")
  String get count;
  @JsonKey(name: "count_total", defaultValue: "0")
  String get countTotal;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "kategori_id") String kategoriId,
      @JsonKey(name: "parent_id") String parentId,
      @JsonKey(name: "internal_code") String internalCode,
      @JsonKey(name: "kategori_code") String kategoriCode,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "picture") String picture,
      @JsonKey(name: "display_store") String displayStore,
      @JsonKey(name: "has_child") String hasChild,
      @JsonKey(name: "count") String count,
      @JsonKey(name: "count_total", defaultValue: "0") String countTotal});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  final CategoryModel _value;
  // ignore: unused_field
  final $Res Function(CategoryModel) _then;

  @override
  $Res call({
    Object kategoriId = freezed,
    Object parentId = freezed,
    Object internalCode = freezed,
    Object kategoriCode = freezed,
    Object description = freezed,
    Object picture = freezed,
    Object displayStore = freezed,
    Object hasChild = freezed,
    Object count = freezed,
    Object countTotal = freezed,
  }) {
    return _then(_value.copyWith(
      kategoriId:
          kategoriId == freezed ? _value.kategoriId : kategoriId as String,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
      internalCode: internalCode == freezed
          ? _value.internalCode
          : internalCode as String,
      kategoriCode: kategoriCode == freezed
          ? _value.kategoriCode
          : kategoriCode as String,
      description:
          description == freezed ? _value.description : description as String,
      picture: picture == freezed ? _value.picture : picture as String,
      displayStore: displayStore == freezed
          ? _value.displayStore
          : displayStore as String,
      hasChild: hasChild == freezed ? _value.hasChild : hasChild as String,
      count: count == freezed ? _value.count : count as String,
      countTotal:
          countTotal == freezed ? _value.countTotal : countTotal as String,
    ));
  }
}

/// @nodoc
abstract class _$CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(
          _CategoryModel value, $Res Function(_CategoryModel) then) =
      __$CategoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "kategori_id") String kategoriId,
      @JsonKey(name: "parent_id") String parentId,
      @JsonKey(name: "internal_code") String internalCode,
      @JsonKey(name: "kategori_code") String kategoriCode,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "picture") String picture,
      @JsonKey(name: "display_store") String displayStore,
      @JsonKey(name: "has_child") String hasChild,
      @JsonKey(name: "count") String count,
      @JsonKey(name: "count_total", defaultValue: "0") String countTotal});
}

/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(
      _CategoryModel _value, $Res Function(_CategoryModel) _then)
      : super(_value, (v) => _then(v as _CategoryModel));

  @override
  _CategoryModel get _value => super._value as _CategoryModel;

  @override
  $Res call({
    Object kategoriId = freezed,
    Object parentId = freezed,
    Object internalCode = freezed,
    Object kategoriCode = freezed,
    Object description = freezed,
    Object picture = freezed,
    Object displayStore = freezed,
    Object hasChild = freezed,
    Object count = freezed,
    Object countTotal = freezed,
  }) {
    return _then(_CategoryModel(
      kategoriId:
          kategoriId == freezed ? _value.kategoriId : kategoriId as String,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
      internalCode: internalCode == freezed
          ? _value.internalCode
          : internalCode as String,
      kategoriCode: kategoriCode == freezed
          ? _value.kategoriCode
          : kategoriCode as String,
      description:
          description == freezed ? _value.description : description as String,
      picture: picture == freezed ? _value.picture : picture as String,
      displayStore: displayStore == freezed
          ? _value.displayStore
          : displayStore as String,
      hasChild: hasChild == freezed ? _value.hasChild : hasChild as String,
      count: count == freezed ? _value.count : count as String,
      countTotal:
          countTotal == freezed ? _value.countTotal : countTotal as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CategoryModel implements _CategoryModel {
  _$_CategoryModel(
      {@JsonKey(name: "kategori_id") this.kategoriId,
      @JsonKey(name: "parent_id") this.parentId,
      @JsonKey(name: "internal_code") this.internalCode,
      @JsonKey(name: "kategori_code") this.kategoriCode,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "picture") this.picture,
      @JsonKey(name: "display_store") this.displayStore,
      @JsonKey(name: "has_child") this.hasChild,
      @JsonKey(name: "count") this.count,
      @JsonKey(name: "count_total", defaultValue: "0") this.countTotal});

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryModelFromJson(json);

  @override
  @JsonKey(name: "kategori_id")
  final String kategoriId;
  @override
  @JsonKey(name: "parent_id")
  final String parentId;
  @override
  @JsonKey(name: "internal_code")
  final String internalCode;
  @override
  @JsonKey(name: "kategori_code")
  final String kategoriCode;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "picture")
  final String picture;
  @override
  @JsonKey(name: "display_store")
  final String displayStore;
  @override
  @JsonKey(name: "has_child")
  final String hasChild;
  @override
  @JsonKey(name: "count")
  final String count;
  @override
  @JsonKey(name: "count_total", defaultValue: "0")
  final String countTotal;

  @override
  String toString() {
    return 'CategoryModel(kategoriId: $kategoriId, parentId: $parentId, internalCode: $internalCode, kategoriCode: $kategoriCode, description: $description, picture: $picture, displayStore: $displayStore, hasChild: $hasChild, count: $count, countTotal: $countTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryModel &&
            (identical(other.kategoriId, kategoriId) ||
                const DeepCollectionEquality()
                    .equals(other.kategoriId, kategoriId)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.internalCode, internalCode) ||
                const DeepCollectionEquality()
                    .equals(other.internalCode, internalCode)) &&
            (identical(other.kategoriCode, kategoriCode) ||
                const DeepCollectionEquality()
                    .equals(other.kategoriCode, kategoriCode)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.displayStore, displayStore) ||
                const DeepCollectionEquality()
                    .equals(other.displayStore, displayStore)) &&
            (identical(other.hasChild, hasChild) ||
                const DeepCollectionEquality()
                    .equals(other.hasChild, hasChild)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.countTotal, countTotal) ||
                const DeepCollectionEquality()
                    .equals(other.countTotal, countTotal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(kategoriId) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(internalCode) ^
      const DeepCollectionEquality().hash(kategoriCode) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(displayStore) ^
      const DeepCollectionEquality().hash(hasChild) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(countTotal);

  @JsonKey(ignore: true)
  @override
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryModelToJson(this);
  }
}

abstract class _CategoryModel implements CategoryModel {
  factory _CategoryModel(
          {@JsonKey(name: "kategori_id") String kategoriId,
          @JsonKey(name: "parent_id") String parentId,
          @JsonKey(name: "internal_code") String internalCode,
          @JsonKey(name: "kategori_code") String kategoriCode,
          @JsonKey(name: "description") String description,
          @JsonKey(name: "picture") String picture,
          @JsonKey(name: "display_store") String displayStore,
          @JsonKey(name: "has_child") String hasChild,
          @JsonKey(name: "count") String count,
          @JsonKey(name: "count_total", defaultValue: "0") String countTotal}) =
      _$_CategoryModel;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  @JsonKey(name: "kategori_id")
  String get kategoriId;
  @override
  @JsonKey(name: "parent_id")
  String get parentId;
  @override
  @JsonKey(name: "internal_code")
  String get internalCode;
  @override
  @JsonKey(name: "kategori_code")
  String get kategoriCode;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "picture")
  String get picture;
  @override
  @JsonKey(name: "display_store")
  String get displayStore;
  @override
  @JsonKey(name: "has_child")
  String get hasChild;
  @override
  @JsonKey(name: "count")
  String get count;
  @override
  @JsonKey(name: "count_total", defaultValue: "0")
  String get countTotal;
  @override
  @JsonKey(ignore: true)
  _$CategoryModelCopyWith<_CategoryModel> get copyWith;
}
