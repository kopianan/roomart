class DataItemModel {
  String itemId;
  String itemCode;
  String barcode;
  String itemSku;
  String updateDate;
  String kategoriId;
  String internalCode;
  String kategoriCode;
  String kategori;
  String katPicture;
  String itemName;
  String displayDesc;
  String itemPrice;
  String customerTypeId;
  String newPrice;
  String itmPriceFmt;
  String isFixedPrice;
  String qty;
  String qtyCart; //Added by Said
  String unitCode;
  String taxCode;
  String pic;
  String displayStore;
  String priceListCode;
  String weight;
  String inOrder;

  DataItemModel(
      {this.itemId,
      this.itemCode,
      this.barcode,
      this.itemSku,
      this.updateDate,
      this.kategoriId,
      this.internalCode,
      this.kategoriCode,
      this.kategori,
      this.katPicture,
      this.itemName,
      this.displayDesc,
      this.itemPrice,
      this.customerTypeId,
      this.newPrice,
      this.itmPriceFmt,
      this.isFixedPrice,
      this.qty,
      this.qtyCart,
      this.unitCode,
      this.taxCode,
      this.pic,
      this.displayStore,
      this.priceListCode,
      this.weight,
      this.inOrder});

  DataItemModel.fromJson(Map<String, dynamic> json) {
    itemId = json['item_id'];
    itemCode = json['item_code'];
    barcode = json['barcode'];
    itemSku = json['item_sku'];
    updateDate = json['update_date'];
    kategoriId = json['kategori_id'];
    internalCode = json['internal_code'];
    kategoriCode = json['kategori_code'];
    kategori = json['kategori'];
    katPicture = json['kat_picture'];
    itemName = json['item_name'];
    displayDesc = json['display_desc'];
    itemPrice = json['item_price'];
    customerTypeId = json['customer_type_id'];
    newPrice = json['new_price'];
    itmPriceFmt = json['itm_price_fmt'];
    isFixedPrice = json['is_fixed_price'];
    qty = json['qty'];
    unitCode = json['unit_code'];
    taxCode = json['tax_code'];
    pic = json['pic'];
    displayStore = json['display_store'];
    priceListCode = json['price_list_code'];
    weight = json['weight'];
    inOrder = json['in_order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_id'] = this.itemId;
    data['item_code'] = this.itemCode;
    data['barcode'] = this.barcode;
    data['item_sku'] = this.itemSku;
    data['update_date'] = this.updateDate;
    data['kategori_id'] = this.kategoriId;
    data['internal_code'] = this.internalCode;
    data['kategori_code'] = this.kategoriCode;
    data['kategori'] = this.kategori;
    data['kat_picture'] = this.katPicture;
    data['item_name'] = this.itemName;
    data['display_desc'] = this.displayDesc;
    data['item_price'] = this.itemPrice;
    data['customer_type_id'] = this.customerTypeId;
    data['new_price'] = this.newPrice;
    data['itm_price_fmt'] = this.itmPriceFmt;
    data['is_fixed_price'] = this.isFixedPrice;
    data['qty'] = this.qty;
    data['unit_code'] = this.unitCode;
    data['tax_code'] = this.taxCode;
    data['pic'] = this.pic;
    data['display_store'] = this.displayStore;
    data['price_list_code'] = this.priceListCode;
    data['weight'] = this.weight;
    data['in_order'] = this.inOrder;
    return data;
  }
}