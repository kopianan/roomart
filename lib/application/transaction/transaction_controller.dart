import 'package:get/get.dart';
import 'package:roomart/domain/models/discount/discount_code.dart';
import 'package:roomart/domain/models/discount/discount_data_model.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/cost.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/cost_data_model.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/costs.dart';
import 'package:roomart/domain/transaction/full_transaction_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model_v2.dart';
import 'package:roomart/presentation/payment/widgets/delivery_detail.dart';

class TransactionController extends GetxController {
  RxInt newOffset = 0.obs;
  RxInt cancelOffset = 0.obs;
  RxInt notPaidOffset = 0.obs;
  RxInt finishedOffset = 0.obs;
  RxInt sentOffset = 0.obs;
  List<TransactionDataModel> allTransaction = <TransactionDataModel>[];
  List<TransactionDataModel> newTransaction = <TransactionDataModel>[];
  List<TransactionDataModel> cancelledTransaction = <TransactionDataModel>[];
  List<TransactionDataModel> notPaidTransaction = <TransactionDataModel>[];
  List<TransactionDataModelV2> finishedTransaction = <TransactionDataModelV2>[];
  List<FullTransactionDataModel> sentTransaction = <FullTransactionDataModel>[];
  List<CostDataModel> costList = <CostDataModel>[];
  Rx<Costs> selectedDelivery = Costs().obs;
  Rx<CostDataModel> selectedFullDelivery = CostDataModel().obs;

  Rx<DiscountDataModel> selectedDiscount = DiscountDataModel().obs;
  Rx<DiscountCode> selectedDiscountCode = DiscountCode(totalDiscount: "0").obs;

  //Payment
  double calculateGrandTotal(double subtotal) {
    //subtotal - discount + ongkos kirim

    var _discount1 = double.parse(calculateDiscount(subtotal));
    var _discount2 = double.parse(getSelectedDiscountCode.totalDiscount);
    var _ongkos = calculateDeliveryCost();
    return subtotal - _discount1 - _discount2 + _ongkos;
  }

  //DISCONT 2

  void setSelectedDiscountCode(DiscountCode code) {
    this.selectedDiscountCode.value = code;
    update();
  }

  DiscountCode get getSelectedDiscountCode => this.selectedDiscountCode.value;

//Discount
  List<DiscountDataModel> listDiscount = <DiscountDataModel>[];

  // List<DiscountDataModel> getDiscountList(String userTypeId) {
  //   return this.listDiscount;
  // }
  List<DiscountDataModel> getDiscountList(String userTypeId) {
    DateTime dateTime = DateTime.now();
    List<DiscountDataModel> list = [];
    listDiscount.forEach((element) {
      if (element.customerTypeId == userTypeId) {
        final startTime = DateTime.parse(element.eventEndDate);
        final endTime = DateTime.parse(element.eventBeginDate);
        if (dateTime.isAfter(startTime) && dateTime.isBefore(endTime)) {
          list.add(element);
        }
      } else {}
    });
    return list;
  }

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
        return ((subTotal * _doublePercent / 100)).toString();
      }
    }
  }

  //COSTLIST
  void setCostList(List<CostDataModel> data) {
    //add lain lain

    var otherType =
        CostDataModel(code: " ", name: "Pengiriman Lain-lain", costs: [
      Costs(
          description: "-",
          service: "Lain-lain",
          cost: [Cost(etd: "-", note: "Other", value: 0)])
    ]);

    this.costList = data;
    this.costList.add(otherType);
  }

  void setDeliveryCost(Costs costs, CostDataModel costDataModel) {
    this.selectedDelivery.value = costs;
    this.selectedFullDelivery.value = costDataModel;
    update();
  }

  CostDataModel get getSelectedFullDelivery => this.selectedFullDelivery.value;
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

//SENT TRANSACTION

  void addSendTransaction(List<FullTransactionDataModel> data) {
    sentOffset.value += 1;
    this.sentTransaction.addAll(data);
  }

  void setSentTransaction(List<FullTransactionDataModel> list) {
    sentOffset.value += 1;
    this.sentTransaction.assignAll(list);
  }

  List<FullTransactionDataModel> getSentTransaction(String status) {
    var list = this
        .sentTransaction
        .where((element) => element.transactionStatus == status)
        .toList();
    print(list.length);
    return list;
  }

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

  List<TransactionDataModel> get getNotPaidTransaction {
    // var _list = notPaidTransaction
    //     .where(
    //         (element) => (element.statusEnum == 0 || element.statusEnum == 1))
    //     .toList();
    // return _list;
    return this.notPaidTransaction;
  }

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
