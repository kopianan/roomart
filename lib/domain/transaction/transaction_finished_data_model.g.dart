// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_finished_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionFinishedDataModel _$_$_TransactionFinishedDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionFinishedDataModel(
    json['sales_transaction_detail_id'] as String,
    json['sales_order_id'] as String,
    json['delivery_order_id'] as String,
    json['delivery_order_detail_id'] as String,
    json['sales_transaction_id'] as String,
    json['index_no'] as String,
    json['item_id'] as String,
    json['item_code'] as String,
    json['item_name'] as String,
    json['description'] as String,
    json['unit_id'] as String,
    json['unit_code'] as String,
    json['qty'] as String,
    json['qty_base'] as String,
    json['returned_qty'] as String,
    json['item_price'] as String,
    json['tax_id'] as String,
    json['tax_amount'] as String,
    json['sub_total_tax'] as String,
    json['discount_id'] as String,
    json['discount'] as String,
    json['sub_total_disc'] as String,
    json['item_cost'] as String,
    json['sub_total_cost'] as String,
    json['sub_total'] as String,
    json['project_id'] as String,
    json['department_id'] as String,
    json['employee_id'] as String,
    json['changed_manual'] as String,
    json['item_picture'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_TransactionFinishedDataModelToJson(
        _$_TransactionFinishedDataModel instance) =>
    <String, dynamic>{
      'sales_transaction_detail_id': instance.salesTransactionDetailId,
      'sales_order_id': instance.salesOrderId,
      'delivery_order_id': instance.deliveryOrderId,
      'delivery_order_detail_id': instance.deliveryOrderDetailId,
      'sales_transaction_id': instance.salesTransactionId,
      'index_no': instance.indexNo,
      'item_id': instance.itemId,
      'item_code': instance.itemCode,
      'item_name': instance.itemName,
      'description': instance.description,
      'unit_id': instance.unitId,
      'unit_code': instance.unitCode,
      'qty': instance.qty,
      'qty_base': instance.qtyBase,
      'returned_qty': instance.returnedQty,
      'item_price': instance.itemPrice,
      'tax_id': instance.taxId,
      'tax_amount': instance.taxAmount,
      'sub_total_tax': instance.subTotalTax,
      'discount_id': instance.discountId,
      'discount': instance.discount,
      'sub_total_disc': instance.subTotalDisc,
      'item_cost': instance.itemCost,
      'sub_total_cost': instance.subTotalCost,
      'sub_total': instance.subTotal,
      'project_id': instance.projectId,
      'department_id': instance.departmentId,
      'employee_id': instance.employeeId,
      'changed_manual': instance.changedManual,
      'item_picture': instance.itemPicture,
    };
