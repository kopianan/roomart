import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_data_model_v2.freezed.dart';
part 'transaction_data_model_v2.g.dart';

@freezed
 class TransactionDataModelV2 with _$TransactionDataModelV2 {
  factory TransactionDataModelV2({
    @JsonKey( defaultValue: "", name: "sales_transaction_id") String? salesTransactionId,
    @JsonKey( defaultValue: "", name: "location_id") String? locationId,
    @JsonKey( defaultValue: "", name: "status") String? status,
    @JsonKey( defaultValue: "", name: "invoice_no") String? invoiceNo,
    @JsonKey( defaultValue: "", name: "transaction_date") String? transactionDate,
    @JsonKey( defaultValue: "", name: "due_date") String? dueDate,
    @JsonKey( defaultValue: "", name: "customer_id") String? customerId,
    @JsonKey( defaultValue: "", name: "customer_name") String? customerName,
    @JsonKey( defaultValue: "", name: "total_qty") String? totalQty,
    @JsonKey( defaultValue: "", name: "total_amount") String? totalAmount,
    @JsonKey( defaultValue: "", name: "total_discount_pct") String? totalDiscountPct,
    @JsonKey( defaultValue: "", name: "total_discount") String? totalDiscount,
    @JsonKey( defaultValue: "", name: "total_tax") String? totalTax,
    @JsonKey( defaultValue: "", name: "courier_id") String? courierId,
    @JsonKey( defaultValue: "", name: "shipping_price") String? shippingPrice,
    @JsonKey( defaultValue: "", name: "total_expense") String? totalExpense,
    @JsonKey( defaultValue: "", name: "total_cost") String? totalCost,
    @JsonKey( defaultValue: "", name: "sales_id") String? salesId,
    @JsonKey( defaultValue: "", name: "cashier_name") String? cashierName,
    @JsonKey( defaultValue: "", name: "remark") String? remark,
    @JsonKey( defaultValue: "", name: "payment_type_id") String? paymentTypeId,
    @JsonKey( defaultValue: "", name: "payment_term_id") String? paymentTermId,
    @JsonKey( defaultValue: "", name: "print_times") String? printTimes,
    @JsonKey( defaultValue: "", name: "paid_amount") String? paidAmount,
    @JsonKey( defaultValue: "", name: "payment_amount") String? paymentAmount,
    @JsonKey( defaultValue: "", name: "change_amount") String? changeAmount,
    @JsonKey( defaultValue: "", name: "currency_id") String? currencyId,
    @JsonKey( defaultValue: "", name: "currency_rate") String? currencyRate,
    @JsonKey( defaultValue: "", name: "ship_to") String? shipTo,
    @JsonKey( defaultValue: "", name: "fob_id") String? fobId,
    @JsonKey( defaultValue: "", name: "is_taxable") String? isTaxable,
    @JsonKey( defaultValue: "", name: "is_inclusive_tax") String? isInclusiveTax,
    @JsonKey( defaultValue: "", name: "payment_date") String? paymentDate,
    @JsonKey( defaultValue: "", name: "payment_status") String? paymentStatus,
    @JsonKey( defaultValue: "", name: "freight_account_id") String? freightAccountId,
    @JsonKey( defaultValue: "", name: "fiscal_rate") String? fiscalRate,
    @JsonKey( defaultValue: "", name: "source_trans_id") String? sourceTransId,
    @JsonKey( defaultValue: "", name: "invoice_disc_acc_id") String? invoiceDiscAccId,
    @JsonKey( defaultValue: "", name: "is_inclusive_freight") String? isInclusiveFreight,
    @JsonKey( defaultValue: "", name: "cancel_by") String? cancelBy,
    @JsonKey( defaultValue: "", name: "cancel_date") String? cancelDate,
    @JsonKey( defaultValue: "", name: "is_pos_trans") String? isPosTrans,
    @JsonKey( defaultValue: "", name: "delivery_date") String? deliveryDate,
    @JsonKey( defaultValue: "", name: "total_discount_id") String? totalDiscountId,
    @JsonKey( defaultValue: "", name: "rounding_amount") String? roundingAmount,
    @JsonKey( defaultValue: "", name: "freight_no") String? freightNo,
    @JsonKey( defaultValue: "", name: "ongkir") String? ongkir,
    @JsonKey( defaultValue: "", name: "promocode") String? promocode,
  }) = _TransactionDataModelV2;

  factory TransactionDataModelV2.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataModelV2FromJson(json);
}
