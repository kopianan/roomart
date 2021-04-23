import 'package:get/get.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';

class TransactionController extends GetxController {
  RxInt newOffset = 0.obs;
  RxInt cancelOffset = 0.obs;
  List<TransactionDataModel> allTransaction = <TransactionDataModel>[];
  List<TransactionDataModel> newTransaction = <TransactionDataModel>[];
  List<TransactionDataModel> cancelledTransaction = <TransactionDataModel>[];

  void setAllTransactionHistoryData(List<TransactionDataModel> list) {
    this.allTransaction.addAll(list);
  }

  List<TransactionDataModel> get getAllTransactionData => this.allTransaction;

  List<TransactionDataModel> getFilteredTransaction(String transactionStatus) {
    final list = allTransaction
        .where((element) => element.transactionStatus == transactionStatus)
        .toList();
    return list;
  }

//transaction history
  void addNewTransactionList(List<TransactionDataModel> data) {
    newOffset.value += 1;
    this.newTransaction.addAll(data);
  }

  void setNewTransactionList(List<TransactionDataModel> list) {
    newOffset.value += 1;

    this.newTransaction.assignAll(list);
  }

  List<TransactionDataModel> get getNewTransactionList => this.newTransaction;

//Cancelled transaction history
  void addCancelledTransaction(List<TransactionDataModel> data) {
    cancelOffset.value += 1;
    this.cancelledTransaction.addAll(data);
  }

  void setCancelledTransaction(List<TransactionDataModel> list) {
    cancelOffset.value += 1;
    this.cancelledTransaction.assignAll(list);
  }

  List<TransactionDataModel> get getCancelledTransaction =>
      this.cancelledTransaction;
}
