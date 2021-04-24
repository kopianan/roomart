part of 'transaction_cubit.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.loading() = _Loading;
  const factory TransactionState.error(String error) = _Error;
  const factory TransactionState.onGetHistoryTransaction(
      List<TransactionDataModel> data) = _OnGetHistoryTransaction;
  const factory TransactionState.onGetHistoryTransactionV2(
      List<TransactionDataModelV2> data) = _OnGetHistoryTransactionV2;
}
