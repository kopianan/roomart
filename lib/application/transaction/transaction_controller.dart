import 'package:get/get.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';

class TransactionController extends GetxController {
  List<TransactionDataModel> allTransaction = <TransactionDataModel>[];

  void setAllTransactionHistoryData(List<TransactionDataModel> list) {
    this.allTransaction.assignAll(list);
  }

  List<TransactionDataModel> get getAllTransactionData => this.allTransaction;

  List<TransactionDataModel> getFilteredTransaction(String transactionStatus) {
    final list = allTransaction
        .where((element) => element.transactionStatus == transactionStatus)
        .toList();
    return list;
  }
}
