import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_transaction_data_model.freezed.dart';
part 'full_transaction_data_model.g.dart';

@freezed
abstract class FullTransactionDataModel with _$FullTransactionDataModel {
  factory FullTransactionDataModel({
    @JsonKey(name: "sales_order_id") String salesOrderId,
    @JsonKey(name: "transaction_status") String transactionStatus,
    @JsonKey(name: "sales_order_no") String salesOrderNo,
    @JsonKey(name: "transaction_date") String transactionDate,
    @JsonKey(name: "due_date") String dueDate,
    @JsonKey(name: "customer_id") String customerId,
    @JsonKey(name: "customer_name") String customerName,
    @JsonKey(name: "customer_po_no") String customerPoNo,
    @JsonKey(name: "customer_po_date") String customerPoDate,
    @JsonKey(name: "total_qty") String totalQty,
    @JsonKey(name: "total_amount") String totalAmount,
    @JsonKey(name: "total_discount_pct") String totalDiscountPct,
    @JsonKey(name: "total_discount") String totalDiscount,
    @JsonKey(name: "total_fee") String totalFee,
    @JsonKey(name: "total_tax") String totalTax,
    @JsonKey(name: "remark") String remark,
    @JsonKey(name: "payment_type_id") String paymentTypeId,
    @JsonKey(name: "payment_term_id") String paymentTermId,
    @JsonKey(name: "currency_id") String currencyId,
    @JsonKey(name: "currency_rate") String currencyRate,
    @JsonKey(name: "location_id") String locationId,
    @JsonKey(name: "print_times") String printTimes,
    @JsonKey(name: "user_name") String userName,
    @JsonKey(name: "confirm_by") String confirmBy,
    @JsonKey(name: "confirm_date") String confirmDate,
    @JsonKey(name: "down_payment") String downPayment,
    @JsonKey(name: "ship_to") String shipTo,
    @JsonKey(name: "ship_date") String shipDate,
    @JsonKey(name: "bank_id") String bankId,
    @JsonKey(name: "bank_issuer") String bankIssuer,
    @JsonKey(name: "dp_account_id") String dpAccountId,
    @JsonKey(name: "dp_due_date") String dpDueDate,
    @JsonKey(name: "reference_no") String referenceNo,
    @JsonKey(name: "cash_flow_type_id") String cashFlowTypeId,
    @JsonKey(name: "sales_id") String salesId,
    @JsonKey(name: "courier_id") String courierId,
    @JsonKey(name: "fob_id") String fobId,
    @JsonKey(name: "estimated_freight") String estimatedFreight,
    @JsonKey(name: "is_taxable") String isTaxable,
    @JsonKey(name: "is_inclusive_tax") String isInclusiveTax,
    @JsonKey(name: "fiscal_rate") String fiscalRate,
    @JsonKey(name: "freight_account_id") String freightAccountId,
    @JsonKey(name: "is_inclusive_freight") String isInclusiveFreight,
    @JsonKey(name: "cancel_by") String cancelBy,
    @JsonKey(name: "cancel_date") String cancelDate,
    @JsonKey(name: "ongkir") String ongkir,
    @JsonKey(name: "promocode") String promocode,
  }) = _FullTransactionDataModel;

  factory FullTransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$FullTransactionDataModelFromJson(json);
}
