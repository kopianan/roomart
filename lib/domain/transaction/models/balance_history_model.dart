class BalanceHistoryModel {
  String? salesOrderId;
  String? transactionNo;
  String? transactionDate;
  String? transactionType;
  String? remark;
  String? amount;
  String? rpamount;

  BalanceHistoryModel(
      {this.salesOrderId,
      this.transactionNo,
      this.transactionDate,
      this.transactionType,
      this.remark,
      this.amount,
      this.rpamount});

  BalanceHistoryModel.fromJson(Map<String, dynamic> json) {
    salesOrderId = json['sales_order_id'];
    transactionNo = json['transaction_no'];
    transactionDate = json['transaction_date'];
    transactionType = json['transaction_type'];
    remark = json['remark'];
    amount = json['amount'];
    rpamount = json['rpamount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sales_order_id'] = this.salesOrderId;
    data['transaction_no'] = this.transactionNo;
    data['transaction_date'] = this.transactionDate;
    data['transaction_type'] = this.transactionType;
    data['remark'] = this.remark;
    data['amount'] = this.amount;
    data['rpamount'] = this.rpamount;
    return data;
  }

  static List<BalanceHistoryModel> fromJsonList(jsonList) {
    return jsonList
        .map<BalanceHistoryModel>((obj) => BalanceHistoryModel.fromJson(obj))
        .toList();
  }
}
