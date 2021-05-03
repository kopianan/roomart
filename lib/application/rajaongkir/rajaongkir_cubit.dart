import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/raja_ongkir/cost_request_model.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/cost_data_model.dart';
import 'package:roomart/domain/raja_ongkir/full_data_model.dart';
import 'package:roomart/domain/raja_ongkir/province_data_model.dart';
import 'package:roomart/domain/raja_ongkir/rajaongkir_repository.dart';

part 'rajaongkir_state.dart';
part 'rajaongkir_cubit.freezed.dart';

@injectable
class RajaongkirCubit extends Cubit<RajaongkirState> {
  RajaongkirCubit(this.iTrajaOngkirFacade) : super(RajaongkirState.initial());
  final ITrajaOngkirFacade iTrajaOngkirFacade;

  void getProvinceData() async {
    emit(RajaongkirState.loading());
    try {
      final _result = await iTrajaOngkirFacade.getProvinceList();
      _result.fold(
        (l) => emit(RajaongkirState.error(l.toString())),
        (r) => emit(RajaongkirState.getProvinceData(r)),
      );
    } catch (e) {
      emit(RajaongkirState.error(e.toString()));
    }
  }

  void getCityData(String provinceId) async {
    emit(RajaongkirState.loading());
    try {
      final _result = await iTrajaOngkirFacade.getCityDataList(provinceId);
      _result.fold(
        (l) => emit(RajaongkirState.error(l.toString())),
        (r) => emit(RajaongkirState.getCityData(r)),
      );
    } catch (e) {
      emit(RajaongkirState.error(e.toString()));
    }
  }

  void getCost(CostRequestModel request) async {
    emit(RajaongkirState.loading());
    try {
      final _result = await iTrajaOngkirFacade.getCost(request);
      _result.fold(
        (l) => emit(RajaongkirState.error(l.toString())),
        (r) => emit(RajaongkirState.getCostsList(r)),
      );
    } catch (e) {
      emit(RajaongkirState.error(e.toString()));
    }
  }
}
