import 'package:get/get.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/cost_data_model.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/costs.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model_v2.dart';

class TransactionController extends GetxController {
  RxInt newOffset = 0.obs;
  RxInt cancelOffset = 0.obs;
  RxInt notPaidOffset = 0.obs;
  RxInt finishedOffset = 0.obs;
  List<TransactionDataModel> allTransaction = <TransactionDataModel>[];
  List<TransactionDataModel> newTransaction = <TransactionDataModel>[];
  List<TransactionDataModel> cancelledTransaction = <TransactionDataModel>[];
  List<TransactionDataModel> notPaidTransaction = <TransactionDataModel>[];
  List<TransactionDataModelV2> finishedTransaction = <TransactionDataModelV2>[];
  List<List<CostDataModel>> costList = <List<CostDataModel>>[];
  Rx<Costs> selectedDelivery = Costs().obs;
  //COSTLIST

  void setCostList(List<List<CostDataModel>> data) {
    this.costList = data;
  }

  void setDeliveryCost(Costs costs) {
    this.selectedDelivery.value = costs;
  }

  Costs get getSelectedCost => this.selectedDelivery.value;

  List<List<CostDataModel>> get getCostList => this.costList;

//Transaction  history

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

//NotPaid transaction history
  void addNotPaidTransaction(List<TransactionDataModel> data) {
    notPaidOffset.value += 1;
    this.notPaidTransaction.addAll(data);
  }

  void setNotPaidTransaction(List<TransactionDataModel> list) {
    notPaidOffset.value += 1;
    this.notPaidTransaction.assignAll(list);
  }

  List<TransactionDataModel> get getNotPaidTransaction =>
      this.notPaidTransaction;
//Finished transaction history
  void addFinishedTransaction(List<TransactionDataModelV2> data) {
    finishedOffset.value += 1;
    this.finishedTransaction.addAll(data);
  }

  void setFinishedTransaction(List<TransactionDataModelV2> list) {
    finishedOffset.value += 1;
    this.finishedTransaction.assignAll(list);
  }

  List<TransactionDataModelV2> get getFinishedTransaction =>
      this.finishedTransaction;
}
