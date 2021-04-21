import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/domain/transaction/transaction_repository.dart';

part 'transaction_state.dart';
part 'transaction_cubit.freezed.dart';

@injectable
class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit(this.iTransactionFacade) : super(TransactionState.initial());
  final ITransactionFacade iTransactionFacade;

  void getHistoryTranasction(String userId) async {
    emit(TransactionState.loading());
    try {
      final _result = await iTransactionFacade.getAllCategory(userId);
      _result.fold(
        (l) => emit(TransactionState.error(l.toString())),
        (r) => emit(TransactionState.onGetHistoryTransaction(r)),
      );
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }
}
