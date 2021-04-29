import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/home/home_repository.dart';
import 'package:roomart/domain/models/banner/banner_data_model.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit({this.iHomeFacade}) : super(HomeState.initial());

  final IHomeFacade iHomeFacade;
  void getHomeBanner({String customerId: ""}) async {
    emit(HomeState.loading());
    try {
      final _result = await iHomeFacade.getBanner(customerId);
      emit(HomeState.onGetBanner(_result));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}
