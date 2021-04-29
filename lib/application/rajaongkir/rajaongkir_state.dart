part of 'rajaongkir_cubit.dart';

@freezed
abstract class RajaongkirState with _$RajaongkirState {
  const factory RajaongkirState.initial() = _Initial;
  const factory RajaongkirState.loading() = _Loading;
  const factory RajaongkirState.error(String e) = _Error;
  const factory RajaongkirState.getProvinceData(
      List<ProvinceDataModel> result) = _GetProvinceData;
  const factory RajaongkirState.getCityData(List<FullDataModel> result) =
      _GetCityData;
  const factory RajaongkirState.getCostsList(
      List<List<CostDataModel>> costDataModel) = _GetCostsList;
}
