import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_detail_v1.freezed.dart';
part 'transaction_detail_v1.g.dart';

@freezed
abstract class TransactionDetailV1 with _$TransactionDetailV1 {
  factory TransactionDetailV1({
    @JsonKey(name: "sales_order_detail_id") String salesOrderDetailId,
    @JsonKey(name: "sales_order_id") String salesOrderId,
    @JsonKey(name: "index_no") String indexNo,
    @JsonKey(name: "item_id") String itemId,
    @JsonKey(name: "item_code") String itemCode,
    @JsonKey(name: "item_name") String itemName,
    @JsonKey(name: "description") String description,
    @JsonKey(name: "unit_id") String unitId,
    @JsonKey(name: "unit_code") String unitCode,
    @JsonKey(name: "tax_id") String taxId,
    @JsonKey(name: "tax_amount") String taxAmount,
    @JsonKey(name: "sub_total_tax") String subTotalTax,
    @JsonKey(name: "discount") String discount,
    @JsonKey(name: "sub_total_disc") String subTotalDisc,
    @JsonKey(name: "qty") String qty,
    @JsonKey(name: "qty_base") String qtyBase,
    @JsonKey(name: "item_price") String itemPrice,
    @JsonKey(name: "sub_total") String subTotal,
    @JsonKey(name: "cost_per_unit") String costPerUnit,
    @JsonKey(name: "delivered_qty") String deliveredQty,
    @JsonKey(name: "closed") String closed,
    @JsonKey(name: "project_id") String projectId,
    @JsonKey(name: "department_id") String departmentId,
    @JsonKey(name: "employee_id") String employeeId,
    @JsonKey(name: "quotation_id") String quotationId,
    @JsonKey(name: "quotation_detail_id") String quotationDetailId,
    @JsonKey(name: "barcode") String barcode,
    @JsonKey(name: "item_sku") String itemSku,
    @JsonKey(name: "item_sku_name") String itemSkuName,
    @JsonKey(name: "vendor_item_code") String vendorItemCode,
    @JsonKey(name: "vendor_item_name") String vendorItemName,
    @JsonKey(name: "item_type") String itemType,
    @JsonKey(name: "kategori_id") String kategoriId,
    @JsonKey(name: "purchase_unit_id") String purchaseUnitId,
    @JsonKey(name: "purchase_tax_id") String purchaseTaxId,
    @JsonKey(name: "prefered_vendor_id") String preferedVendorId,
    @JsonKey(name: "min_price") String minPrice,
    @JsonKey(name: "is_fixed_price") String isFixedPrice,
    @JsonKey(name: "item_picture") String itemPicture,
    @JsonKey(name: "last_purchase_price") String lastPurchasePrice,
    @JsonKey(name: "last_purchase_curr") String lastPurchaseCurr,
    @JsonKey(name: "last_purchase_rate") String lastPurchaseRate,
    @JsonKey(name: "profit_margin") String profitMargin,
    @JsonKey(name: "minimum_stock") String minimumStock,
    @JsonKey(name: "reorder_point") String reorderPoint,
    @JsonKey(name: "maximum_stock") String maximumStock,
    @JsonKey(name: "rack_location") String rackLocation,
    @JsonKey(name: "warehouse_id") String warehouseId,
    @JsonKey(name: "delivery_type") String deliveryType,
    @JsonKey(name: "item_status_code_id") String itemStatusCodeId,
    @JsonKey(name: "status_color") String statusColor,
    @JsonKey(name: "discount_amount") String discountAmount,
    @JsonKey(name: "create_by") String createBy,
    @JsonKey(name: "add_date") String addDate,
    @JsonKey(name: "update_date") String updateDate,
    @JsonKey(name: "last_adjustment") String lastAdjustment,
    @JsonKey(name: "size") String size,
    @JsonKey(name: "color") String color,
    @JsonKey(name: "size_unit") String sizeUnit,
    @JsonKey(name: "unit_conversion") String unitConversion,
    @JsonKey(name: "manufacturer") String manufacturer,
    @JsonKey(name: "track_serial_no") String trackSerialNo,
    @JsonKey(name: "track_batch_no") String trackBatchNo,
    @JsonKey(name: "item_status") String itemStatus,
    @JsonKey(name: "inventory_account") String inventoryAccount,
    @JsonKey(name: "sales_account") String salesAccount,
    @JsonKey(name: "sales_return_account") String salesReturnAccount,
    @JsonKey(name: "item_discount_account") String itemDiscountAccount,
    @JsonKey(name: "cogs_account") String cogsAccount,
    @JsonKey(name: "purchase_return_account") String purchaseReturnAccount,
    @JsonKey(name: "expense_account") String expenseAccount,
    @JsonKey(name: "unbilled_goods_account") String unbilledGoodsAccount,
    @JsonKey(name: "is_consignment") String isConsignment,
    @JsonKey(name: "is_discontinue") String isDiscontinue,
    @JsonKey(name: "display_store") String displayStore,
    @JsonKey(name: "display_desc") String displayDesc,
    @JsonKey(name: "tags") String tags,
    @JsonKey(name: "weight") String weight,
    @JsonKey(name: "volume") String volume,
    @JsonKey(name: "brand") String brand,
  }) = _TransactionDetailV1;

  factory TransactionDetailV1.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailV1FromJson(json);
}