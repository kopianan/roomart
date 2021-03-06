// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rajaongkir_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RajaongkirStateTearOff {
  const _$RajaongkirStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Error error(String e) {
    return _Error(
      e,
    );
  }

// ignore: unused_element
  _GetProvinceData getProvinceData(List<ProvinceDataModel> result) {
    return _GetProvinceData(
      result,
    );
  }

// ignore: unused_element
  _GetCityData getCityData(List<FullDataModel> result) {
    return _GetCityData(
      result,
    );
  }

// ignore: unused_element
  _GetCostsList getCostsList(List<CostDataModel> costDataModel) {
    return _GetCostsList(
      costDataModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RajaongkirState = _$RajaongkirStateTearOff();

/// @nodoc
mixin _$RajaongkirState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult getProvinceData(List<ProvinceDataModel> result),
    @required TResult getCityData(List<FullDataModel> result),
    @required TResult getCostsList(List<CostDataModel> costDataModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult getProvinceData(List<ProvinceDataModel> result),
    TResult getCityData(List<FullDataModel> result),
    TResult getCostsList(List<CostDataModel> costDataModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult getProvinceData(_GetProvinceData value),
    @required TResult getCityData(_GetCityData value),
    @required TResult getCostsList(_GetCostsList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult getProvinceData(_GetProvinceData value),
    TResult getCityData(_GetCityData value),
    TResult getCostsList(_GetCostsList value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RajaongkirStateCopyWith<$Res> {
  factory $RajaongkirStateCopyWith(
          RajaongkirState value, $Res Function(RajaongkirState) then) =
      _$RajaongkirStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RajaongkirStateCopyWithImpl<$Res>
    implements $RajaongkirStateCopyWith<$Res> {
  _$RajaongkirStateCopyWithImpl(this._value, this._then);

  final RajaongkirState _value;
  // ignore: unused_field
  final $Res Function(RajaongkirState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RajaongkirState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult getProvinceData(List<ProvinceDataModel> result),
    @required TResult getCityData(List<FullDataModel> result),
    @required TResult getCostsList(List<CostDataModel> costDataModel),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult getProvinceData(List<ProvinceDataModel> result),
    TResult getCityData(List<FullDataModel> result),
    TResult getCostsList(List<CostDataModel> costDataModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult getProvinceData(_GetProvinceData value),
    @required TResult getCityData(_GetCityData value),
    @required TResult getCostsList(_GetCostsList value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult getProvinceData(_GetProvinceData value),
    TResult getCityData(_GetCityData value),
    TResult getCostsList(_GetCostsList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RajaongkirState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'RajaongkirState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult getProvinceData(List<ProvinceDataModel> result),
    @required TResult getCityData(List<FullDataModel> result),
    @required TResult getCostsList(List<CostDataModel> costDataModel),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult getProvinceData(List<ProvinceDataModel> result),
    TResult getCityData(List<FullDataModel> result),
    TResult getCostsList(List<CostDataModel> costDataModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult getProvinceData(_GetProvinceData value),
    @required TResult getCityData(_GetCityData value),
    @required TResult getCostsList(_GetCostsList value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult getProvinceData(_GetProvinceData value),
    TResult getCityData(_GetCityData value),
    TResult getCostsList(_GetCostsList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RajaongkirState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String e});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object e = freezed,
  }) {
    return _then(_Error(
      e == freezed ? _value.e : e as String,
    ));
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.e) : assert(e != null);

  @override
  final String e;

  @override
  String toString() {
    return 'RajaongkirState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult getProvinceData(List<ProvinceDataModel> result),
    @required TResult getCityData(List<FullDataModel> result),
    @required TResult getCostsList(List<CostDataModel> costDataModel),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult getProvinceData(List<ProvinceDataModel> result),
    TResult getCityData(List<FullDataModel> result),
    TResult getCostsList(List<CostDataModel> costDataModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult getProvinceData(_GetProvinceData value),
    @required TResult getCityData(_GetCityData value),
    @required TResult getCostsList(_GetCostsList value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult getProvinceData(_GetProvinceData value),
    TResult getCityData(_GetCityData value),
    TResult getCostsList(_GetCostsList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RajaongkirState {
  const factory _Error(String e) = _$_Error;

  String get e;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$GetProvinceDataCopyWith<$Res> {
  factory _$GetProvinceDataCopyWith(
          _GetProvinceData value, $Res Function(_GetProvinceData) then) =
      __$GetProvinceDataCopyWithImpl<$Res>;
  $Res call({List<ProvinceDataModel> result});
}

/// @nodoc
class __$GetProvinceDataCopyWithImpl<$Res>
    extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$GetProvinceDataCopyWith<$Res> {
  __$GetProvinceDataCopyWithImpl(
      _GetProvinceData _value, $Res Function(_GetProvinceData) _then)
      : super(_value, (v) => _then(v as _GetProvinceData));

  @override
  _GetProvinceData get _value => super._value as _GetProvinceData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(_GetProvinceData(
      result == freezed ? _value.result : result as List<ProvinceDataModel>,
    ));
  }
}

/// @nodoc
class _$_GetProvinceData implements _GetProvinceData {
  const _$_GetProvinceData(this.result) : assert(result != null);

  @override
  final List<ProvinceDataModel> result;

  @override
  String toString() {
    return 'RajaongkirState.getProvinceData(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetProvinceData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$GetProvinceDataCopyWith<_GetProvinceData> get copyWith =>
      __$GetProvinceDataCopyWithImpl<_GetProvinceData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult getProvinceData(List<ProvinceDataModel> result),
    @required TResult getCityData(List<FullDataModel> result),
    @required TResult getCostsList(List<CostDataModel> costDataModel),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return getProvinceData(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult getProvinceData(List<ProvinceDataModel> result),
    TResult getCityData(List<FullDataModel> result),
    TResult getCostsList(List<CostDataModel> costDataModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProvinceData != null) {
      return getProvinceData(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult getProvinceData(_GetProvinceData value),
    @required TResult getCityData(_GetCityData value),
    @required TResult getCostsList(_GetCostsList value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return getProvinceData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult getProvinceData(_GetProvinceData value),
    TResult getCityData(_GetCityData value),
    TResult getCostsList(_GetCostsList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProvinceData != null) {
      return getProvinceData(this);
    }
    return orElse();
  }
}

abstract class _GetProvinceData implements RajaongkirState {
  const factory _GetProvinceData(List<ProvinceDataModel> result) =
      _$_GetProvinceData;

  List<ProvinceDataModel> get result;
  @JsonKey(ignore: true)
  _$GetProvinceDataCopyWith<_GetProvinceData> get copyWith;
}

/// @nodoc
abstract class _$GetCityDataCopyWith<$Res> {
  factory _$GetCityDataCopyWith(
          _GetCityData value, $Res Function(_GetCityData) then) =
      __$GetCityDataCopyWithImpl<$Res>;
  $Res call({List<FullDataModel> result});
}

/// @nodoc
class __$GetCityDataCopyWithImpl<$Res>
    extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$GetCityDataCopyWith<$Res> {
  __$GetCityDataCopyWithImpl(
      _GetCityData _value, $Res Function(_GetCityData) _then)
      : super(_value, (v) => _then(v as _GetCityData));

  @override
  _GetCityData get _value => super._value as _GetCityData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(_GetCityData(
      result == freezed ? _value.result : result as List<FullDataModel>,
    ));
  }
}

/// @nodoc
class _$_GetCityData implements _GetCityData {
  const _$_GetCityData(this.result) : assert(result != null);

  @override
  final List<FullDataModel> result;

  @override
  String toString() {
    return 'RajaongkirState.getCityData(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCityData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$GetCityDataCopyWith<_GetCityData> get copyWith =>
      __$GetCityDataCopyWithImpl<_GetCityData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult getProvinceData(List<ProvinceDataModel> result),
    @required TResult getCityData(List<FullDataModel> result),
    @required TResult getCostsList(List<CostDataModel> costDataModel),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return getCityData(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult getProvinceData(List<ProvinceDataModel> result),
    TResult getCityData(List<FullDataModel> result),
    TResult getCostsList(List<CostDataModel> costDataModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCityData != null) {
      return getCityData(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult getProvinceData(_GetProvinceData value),
    @required TResult getCityData(_GetCityData value),
    @required TResult getCostsList(_GetCostsList value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return getCityData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult getProvinceData(_GetProvinceData value),
    TResult getCityData(_GetCityData value),
    TResult getCostsList(_GetCostsList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCityData != null) {
      return getCityData(this);
    }
    return orElse();
  }
}

abstract class _GetCityData implements RajaongkirState {
  const factory _GetCityData(List<FullDataModel> result) = _$_GetCityData;

  List<FullDataModel> get result;
  @JsonKey(ignore: true)
  _$GetCityDataCopyWith<_GetCityData> get copyWith;
}

/// @nodoc
abstract class _$GetCostsListCopyWith<$Res> {
  factory _$GetCostsListCopyWith(
          _GetCostsList value, $Res Function(_GetCostsList) then) =
      __$GetCostsListCopyWithImpl<$Res>;
  $Res call({List<CostDataModel> costDataModel});
}

/// @nodoc
class __$GetCostsListCopyWithImpl<$Res>
    extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$GetCostsListCopyWith<$Res> {
  __$GetCostsListCopyWithImpl(
      _GetCostsList _value, $Res Function(_GetCostsList) _then)
      : super(_value, (v) => _then(v as _GetCostsList));

  @override
  _GetCostsList get _value => super._value as _GetCostsList;

  @override
  $Res call({
    Object costDataModel = freezed,
  }) {
    return _then(_GetCostsList(
      costDataModel == freezed
          ? _value.costDataModel
          : costDataModel as List<CostDataModel>,
    ));
  }
}

/// @nodoc
class _$_GetCostsList implements _GetCostsList {
  const _$_GetCostsList(this.costDataModel) : assert(costDataModel != null);

  @override
  final List<CostDataModel> costDataModel;

  @override
  String toString() {
    return 'RajaongkirState.getCostsList(costDataModel: $costDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCostsList &&
            (identical(other.costDataModel, costDataModel) ||
                const DeepCollectionEquality()
                    .equals(other.costDataModel, costDataModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(costDataModel);

  @JsonKey(ignore: true)
  @override
  _$GetCostsListCopyWith<_GetCostsList> get copyWith =>
      __$GetCostsListCopyWithImpl<_GetCostsList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String e),
    @required TResult getProvinceData(List<ProvinceDataModel> result),
    @required TResult getCityData(List<FullDataModel> result),
    @required TResult getCostsList(List<CostDataModel> costDataModel),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return getCostsList(costDataModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String e),
    TResult getProvinceData(List<ProvinceDataModel> result),
    TResult getCityData(List<FullDataModel> result),
    TResult getCostsList(List<CostDataModel> costDataModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCostsList != null) {
      return getCostsList(costDataModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult getProvinceData(_GetProvinceData value),
    @required TResult getCityData(_GetCityData value),
    @required TResult getCostsList(_GetCostsList value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(getProvinceData != null);
    assert(getCityData != null);
    assert(getCostsList != null);
    return getCostsList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult getProvinceData(_GetProvinceData value),
    TResult getCityData(_GetCityData value),
    TResult getCostsList(_GetCostsList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCostsList != null) {
      return getCostsList(this);
    }
    return orElse();
  }
}

abstract class _GetCostsList implements RajaongkirState {
  const factory _GetCostsList(List<CostDataModel> costDataModel) =
      _$_GetCostsList;

  List<CostDataModel> get costDataModel;
  @JsonKey(ignore: true)
  _$GetCostsListCopyWith<_GetCostsList> get copyWith;
}
