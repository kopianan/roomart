// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_transaction_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FullTransactionDataModel _$_$_FullTransactionDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_FullTransactionDataModel(
    salesOrderId: json['sales_order_id'] as String?,
    transactionStatus: json['transaction_status'] as String?,
    salesOrderNo: json['sales_order_no'] as String?,
    transactionDate: json['transaction_date'] as String?,
    dueDate: json['due_date'] as String?,
    customerId: json['customer_id'] as String?,
    customerName: json['customer_name'] as String?,
    customerPoNo: json['customer_po_no'] as String?,
    customerPoDate: json['customer_po_date'] as String?,
    totalQty: json['total_qty'] as String?,
    totalAmount: json['total_amount'] as String?,
    totalDiscountPct: json['total_discount_pct'] as String?,
    totalDiscount: json['total_discount'] as String?,
    totalFee: json['total_fee'] as String?,
    totalTax: json['total_tax'] as String?,
    remark: json['remark'] as String?,
    paymentTypeId: json['payment_type_id'] as String?,
    paymentTermId: json['payment_term_id'] as String?,
    currencyId: json['currency_id'] as String?,
    currencyRate: json['currency_rate'] as String?,
    locationId: json['location_id'] as String?,
    printTimes: json['print_times'] as String?,
    userName: json['user_name'] as String?,
    confirmBy: json['confirm_by'] as String?,
    confirmDate: json['confirm_date'] as String?,
    downPayment: json['down_payment'] as String?,
    shipTo: json['ship_to'] as String?,
    shipDate: json['ship_date'] as String?,
    bankId: json['bank_id'] as String?,
    bankIssuer: json['bank_issuer'] as String?,
    dpAccountId: json['dp_account_id'] as String?,
    dpDueDate: json['dp_due_date'] as String?,
    referenceNo: json['reference_no'] as String?,
    cashFlowTypeId: json['cash_flow_type_id'] as String?,
    salesId: json['sales_id'] as String?,
    courierId: json['courier_id'] as String?,
    fobId: json['fob_id'] as String?,
    estimatedFreight: json['estimated_freight'] as String?,
    isTaxable: json['is_taxable'] as String?,
    isInclusiveTax: json['is_inclusive_tax'] as String?,
    fiscalRate: json['fiscal_rate'] as String?,
    freightAccountId: json['freight_account_id'] as String?,
    isInclusiveFreight: json['is_inclusive_freight'] as String?,
    cancelBy: json['cancel_by'] as String?,
    cancelDate: json['cancel_date'] as String?,
    ongkir: json['ongkir'] as String?,
    promocode: json['promocode'] as String?,
  );
}

Map<String, dynamic> _$_$_FullTransactionDataModelToJson(
        _$_FullTransactionDataModel instance) =>
    <String, dynamic>{
      'sales_order_id': instance.salesOrderId,
      'transaction_status': instance.transactionStatus,
      'sales_order_no': instance.salesOrderNo,
      'transaction_date': instance.transactionDate,
      'due_date': instance.dueDate,
      'customer_id': instance.customerId,
      'customer_name': instance.customerName,
      'customer_po_no': instance.customerPoNo,
      'customer_po_date': instance.customerPoDate,
      'total_qty': instance.totalQty,
      'total_amount': instance.totalAmount,
      'total_discount_pct': instance.totalDiscountPct,
      'total_discount': instance.totalDiscount,
      'total_fee': instance.totalFee,
      'total_tax': instance.totalTax,
      'remark': instance.remark,
      'payment_type_id': instance.paymentTypeId,
      'payment_term_id': instance.paymentTermId,
      'currency_id': instance.currencyId,
      'currency_rate': instance.currencyRate,
      'location_id': instance.locationId,
      'print_times': instance.printTimes,
      'user_name': instance.userName,
      'confirm_by': instance.confirmBy,
      'confirm_date': instance.confirmDate,
      'down_payment': instance.downPayment,
      'ship_to': instance.shipTo,
      'ship_date': instance.shipDate,
      'bank_id': instance.bankId,
      'bank_issuer': instance.bankIssuer,
      'dp_account_id': instance.dpAccountId,
      'dp_due_date': instance.dpDueDate,
      'reference_no': instance.referenceNo,
      'cash_flow_type_id': instance.cashFlowTypeId,
      'sales_id': instance.salesId,
      'courier_id': instance.courierId,
      'fob_id': instance.fobId,
      'estimated_freight': instance.estimatedFreight,
      'is_taxable': instance.isTaxable,
      'is_inclusive_tax': instance.isInclusiveTax,
      'fiscal_rate': instance.fiscalRate,
      'freight_account_id': instance.freightAccountId,
      'is_inclusive_freight': instance.isInclusiveFreight,
      'cancel_by': instance.cancelBy,
      'cancel_date': instance.cancelDate,
      'ongkir': instance.ongkir,
      'promocode': instance.promocode,
    };
