import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_finished_data_model.freezed.dart';
part 'transaction_finished_data_model.g.dart';

@freezed
 class TransactionFinishedDataModel
    with _$TransactionFinishedDataModel {
  factory TransactionFinishedDataModel(
    @JsonKey(name: "sales_transaction_detail_id")
        String salesTransactionDetailId,
    @JsonKey(name: "sales_order_id") String salesOrderId,
    @JsonKey(name: "delivery_order_id") String deliveryOrderId,
    @JsonKey(name: "delivery_order_detail_id") String deliveryOrderDetailId,
    @JsonKey(name: "sales_transaction_id") String salesTransactionId,
    @JsonKey(name: "index_no") String indexNo,
    @JsonKey(name: "item_id") String itemId,
    @JsonKey(name: "item_code") String itemCode,
    @JsonKey(name: "item_name") String itemName,
    @JsonKey(name: "description") String description,
    @JsonKey(name: "unit_id") String unitId,
    @JsonKey(name: "unit_code") String unitCode,
    @JsonKey(name: "qty") String qty,
    @JsonKey(name: "qty_base") String qtyBase,
    @JsonKey(name: "returned_qty") String returnedQty,
    @JsonKey(name: "item_price") String itemPrice,
    @JsonKey(name: "tax_id") String taxId,
    @JsonKey(name: "tax_amount") String taxAmount,
    @JsonKey(name: "sub_total_tax") String subTotalTax,
    @JsonKey(name: "discount_id") String discountId,
    @JsonKey(name: "discount") String discount,
    @JsonKey(name: "sub_total_disc") String subTotalDisc,
    @JsonKey(name: "item_cost") String itemCost,
    @JsonKey(name: "sub_total_cost") String subTotalCost,
    @JsonKey(name: "sub_total") String subTotal,
    @JsonKey(name: "project_id") String projectId,
    @JsonKey(name: "department_id") String departmentId,
    @JsonKey(name: "employee_id") String employeeId,
    @JsonKey(name: "changed_manual") String changedManual,
    @JsonKey(name: "item_picture", defaultValue: "") String itemPicture,
  ) = _TransactionFinishedDataModel;

  factory TransactionFinishedDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionFinishedDataModelFromJson(json);
}
