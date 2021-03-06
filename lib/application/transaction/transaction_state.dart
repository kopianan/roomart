part of 'transaction_cubit.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.loading() = _Loading;
  const factory TransactionState.error(String error) = _Error;
  const factory TransactionState.onGetHistoryTransaction(
      List<TransactionDataModel> data) = _OnGetHistoryTransaction;
  const factory TransactionState.onGetSentHistoryTransaction(
      List<FullTransactionDataModel> data) = _OnGetSentHistoryTransaction;
  const factory TransactionState.onGetHistoryTransactionV2(
      List<TransactionDataModelV2> data) = _OnGetHistoryTransactionV2;
  const factory TransactionState.onAddNewTransaction(TransResponse data) =
      _OnAddNewTransaction;
  const factory TransactionState.onCheckMidtransStatus(
      MidtransStatusDataModel data) = _OnCheckMidtransStatus;
}
