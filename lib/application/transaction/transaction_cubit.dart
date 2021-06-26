import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/transaction/full_transaction_data_model.dart';
import 'package:roomart/domain/transaction/models/transaction_item_data_model.dart';
import 'package:roomart/domain/transaction/models/transaction_req_res.dart';
import 'package:roomart/domain/transaction/trans_item/midtrans_status_data_model.dart';
import 'package:roomart/domain/transaction/trans_item/trans_request.dart';
import 'package:roomart/domain/transaction/trans_item/trans_response.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model_v2.dart';
import 'package:roomart/domain/transaction/transaction_repository.dart';

part 'transaction_state.dart';
part 'transaction_cubit.freezed.dart';

@injectable
class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit(this.iTransactionFacade) : super(TransactionState.initial());
  final ITransactionFacade? iTransactionFacade;

  void getHistoryTransactionByStatus(TransactionHistoryRequest request) async {
    emit(TransactionState.loading());
    try {
      final _result =
          await iTransactionFacade!.getHistoryTransactionByStatus(request);
      _result.fold(
        (l) => emit(TransactionState.error(l.toString())),
        (r) => emit(TransactionState.onGetHistoryTransaction(r)),
      );
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }

  void getHistoryTransactionByMultipleStatus(
      TransactionHistoryRequest request) async {
    emit(TransactionState.loading());
    try {
      final _result = await iTransactionFacade!
          .getHistoryTransactionByMultipleStatus(request);
      _result.fold(
        (l) => emit(TransactionState.error(l.toString())),
        (r) => emit(TransactionState.onGetHistoryTransaction(r)),
      );
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }

  void getHistoryTransactionByStatusV2(
      TransactionHistoryRequest request) async {
    emit(TransactionState.loading());
    try {
      final _result =
          await iTransactionFacade!.getHistoryTransactionByStatusV2(request);
      _result.fold(
        (l) => emit(TransactionState.error(l.toString())),
        (r) => emit(TransactionState.onGetHistoryTransactionV2(r)),
      );
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }

  void getHistorySentTransactionByStatus(
      TransactionHistoryRequest request) async {
    emit(TransactionState.loading());
    try {
      final _result =
          await iTransactionFacade!.getHistorySentTransaction(request);
      _result.fold(
        (l) => emit(TransactionState.error(l.toString())),
        (r) => emit(TransactionState.onGetSentHistoryTransaction(r)),
      );
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }

  void createNewTransaction(TransRequest? request) async {
    emit(TransactionState.loading());
    try {
      final _result = await iTransactionFacade!.addNewTransaction(request);
      _result.fold(
        (l) => emit(TransactionState.error(l.toString())),
        (r) => emit(TransactionState.onAddNewTransaction(r)),
      );
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }

  void checkMidtransTransactionStatus(String? oerderId) async {
    emit(TransactionState.loading());
    try {
      final _result =
          await iTransactionFacade!.checkMidtransPaymentStatus(oerderId);
      _result.fold(
        (l) => emit(TransactionState.error(l.toString())),
        (r) => emit(TransactionState.onCheckMidtransStatus(r)),
      );
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }

  void getAllTransaction(String? userId) async {
    emit(TransactionState.loading());
    try {
      final _result = await iTransactionFacade!.getAllTransaction(userId);
      _result.fold(
        (l) => emit(TransactionState.error(l.toString())),
        (r) => emit(TransactionState.onGetAllTransaction(r)),
      );
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }
}
