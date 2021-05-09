import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/history_detail/history_detail_repository.dart';
import 'package:roomart/domain/history_detail/transaction_detail_v1.dart';

part 'history_detail_state.dart';
part 'history_detail_cubit.freezed.dart';

@injectable
class HistoryDetailCubit extends Cubit<HistoryDetailState> {
  HistoryDetailCubit(this.iHistory) : super(HistoryDetailState.initial());
  IHistoryDetailFacade iHistory;

  void getHistoryDetailTransaction(String salesOrderId) async {
    emit(HistoryDetailState.loading());
    try {
      final _result = await iHistory.getHistoryDetailTransaction(salesOrderId);
      _result.fold(
        (l) => emit(HistoryDetailState.error(l.toString())),
        (r) => emit(HistoryDetailState.onGetDetailHistory(r)),
      );
    } catch (e) {
      emit(HistoryDetailState.error(e.toString()));
    }
  }
}
