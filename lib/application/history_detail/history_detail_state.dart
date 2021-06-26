part of 'history_detail_cubit.dart';

@freezed
 class HistoryDetailState with _$HistoryDetailState {
  const factory HistoryDetailState.initial() = _Initial;
  const factory HistoryDetailState.loading() = _Loading;
  const factory HistoryDetailState.error(String error) = _Error;
  const factory HistoryDetailState.onGetDetailHistory(
      List<TransactionDetailV1> data) = _OnGetDetailHistory;
  const factory HistoryDetailState.onGetFinishedDetail(
      List<TransactionFinishedDataModel> data) = _OnGetFinishedDetail;
}
