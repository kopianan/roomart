import 'package:get/get.dart';
import 'package:roomart/domain/models/discount/discount_data_model.dart';
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
  List<CostDataModel> costList = <CostDataModel>[];
  Rx<Costs> selectedDelivery = Costs().obs;

  Rx<DiscountDataModel> selectedDiscount = DiscountDataModel().obs;

//Payment

  double calculateGrandTotal(double subtotal) {
    //subtotal - discount + ongkos kirim

    var _discount = double.parse(calculateDiscount(subtotal));
    var _ongkos = calculateDeliveryCost();
    return subtotal - _discount + _ongkos;
  }

//Discount
  List<DiscountDataModel> listDiscount = <DiscountDataModel>[];

  List<DiscountDataModel> getDiscountList(String userTypeId) {
    return this.listDiscount;
  }
  // List<DiscountDataModel> getDiscountList(String userTypeId) {
  //   DateTime dateTime = DateTime.now();
  //   List<DiscountDataModel> list = [];
  //   listDiscount.forEach((element) {
  //     if (element.customerTypeId == userTypeId) {
  //       final startTime = DateTime.parse(element.eventEndDate);
  //       final endTime = DateTime.parse(element.eventBeginDate);
  //       if (dateTime.isAfter(startTime) && dateTime.isBefore(endTime)) {
  //         list.add(element);
  //       }
  //     } else {}
  //   });
  //   return list;
  // }

  void setSelectedDiscount(DiscountDataModel discount) {
    this.selectedDiscount.value = discount;
    update();
  }

  DiscountDataModel get getSelectedDiscount => this.selectedDiscount.value;

  void setDiscount(List<DiscountDataModel> list) {
    this.listDiscount = list;
  }

  String calculateDiscount(double subTotal) {
    if (getSelectedDiscount.eventDiscount == null) {
      return 0.toString();
    } else {
      var _stringPercent = getSelectedDiscount.eventDiscount.split("%").first;
      var _doublePercent = double.tryParse(_stringPercent);
      if (_doublePercent == null) {
        return 0.toString();
      } else {
        return (subTotal * _doublePercent / 100).toString();
      }
    }
  }

  //COSTLIST

  void setCostList(List<CostDataModel> data) {
    this.costList = data;
  }

  void setDeliveryCost(Costs costs) {
    this.selectedDelivery.value = costs;
    update();
  }

  Costs get getSelectedCost => this.selectedDelivery.value;

  double calculateDeliveryCost() {
    if (selectedDelivery.value == null) {
      return 0;
    } else {
      try {
        return double.parse(getSelectedCost.cost.first.value.toString());
      } catch (e) {
        return 0;
      }
    }
  }

  List<CostDataModel> get getCostList => this.costList;

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
