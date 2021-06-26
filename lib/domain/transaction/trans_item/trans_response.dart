class TransResponse {
  String? token;
  List<SalesTrans>? salesTrans;

  TransResponse({this.token, this.salesTrans});

  TransResponse.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    if (json['sales_trans'] != null) {
      salesTrans = <SalesTrans>[];
      json['sales_trans'].forEach((v) {
        salesTrans!.add(new SalesTrans.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.salesTrans != null) {
      data['sales_trans'] = this.salesTrans!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SalesTrans {
  String? transNo;
  String? transType;
  String? location;
  String? transDt;
  String? customer;
  String? createBy;
  String? remark;
  String? pmttype;
  String? paymentChannel;
  String? totalDiscount;
  String? pmtterm;
  int? bankId;
  List<Details>? details;
  String? parentId;
  bool? isReseller;
  String? email;
  String? fullname;
  String? password;
  String? paymentGatewayUrl;

  SalesTrans(
      {this.transNo,
      this.transType,
      this.location,
      this.transDt,
      this.customer,
      this.createBy,
      this.remark,
      this.pmttype,
      this.paymentChannel,
      this.totalDiscount,
      this.pmtterm,
      this.bankId,
      this.details,
      this.parentId,
      this.isReseller,
      this.email,
      this.fullname,
      this.password,
      this.paymentGatewayUrl});

  SalesTrans.fromJson(Map<String, dynamic> json) {
    transNo = json['trans_no'];
    transType = json['trans_type'];
    location = json['location'];
    transDt = json['trans_dt'];
    customer = json['customer'];
    createBy = json['create_by'];
    remark = json['remark'];
    pmttype = json['pmttype'];
    paymentChannel = json['PaymentChannel'];
    totalDiscount = json['total_discount'];
    pmtterm = json['pmtterm'];
    bankId = json['bankId'];
    if (json['details'] != null) {
      details = <Details>[];
      json['details'].forEach((v) {
        details!.add(new Details.fromJson(v));
      });
    }
    parentId = json['parent_id'];
    isReseller = json['is_reseller'];
    email = json['email'];
    fullname = json['fullname'];
    password = json['password'];
    paymentGatewayUrl = json['paymentGatewayUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['trans_no'] = this.transNo;
    data['trans_type'] = this.transType;
    data['location'] = this.location;
    data['trans_dt'] = this.transDt;
    data['customer'] = this.customer;
    data['create_by'] = this.createBy;
    data['remark'] = this.remark;
    data['pmttype'] = this.pmttype;
    data['PaymentChannel'] = this.paymentChannel;
    data['total_discount'] = this.totalDiscount;
    data['pmtterm'] = this.pmtterm;
    data['bankId'] = this.bankId;
    if (this.details != null) {
      data['details'] = this.details!.map((v) => v.toJson()).toList();
    }
    data['parent_id'] = this.parentId;
    data['is_reseller'] = this.isReseller;
    data['email'] = this.email;
    data['fullname'] = this.fullname;
    data['password'] = this.password;
    data['paymentGatewayUrl'] = this.paymentGatewayUrl;
    return data;
  }
}

class Details {
  String? itemCode;
  String? itemId;
  String? itemName;
  String? itemImage;
  String? qty;
  String? unit;
  double? resellerPrice;
  double? price;
  String? tax;
  String? discount;

  Details(
      {this.itemCode,
      this.itemId,
      this.itemName,
      this.itemImage,
      this.qty,
      this.unit,
      this.resellerPrice,
      this.price,
      this.tax,
      this.discount});

  Details.fromJson(Map<String, dynamic> json) {
    itemCode = json['item_code'];
    itemId = json['item_id'];
    itemName = json['item_name'];
    itemImage = json['itemImage'];
    qty = json['qty'];
    unit = json['unit'];
    resellerPrice = json['reseller_price'];
    price = json['price'];
    tax = json['tax'];
    discount = json['discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_code'] = this.itemCode;
    data['item_id'] = this.itemId;
    data['item_name'] = this.itemName;
    data['itemImage'] = this.itemImage;
    data['qty'] = this.qty;
    data['unit'] = this.unit;
    data['reseller_price'] = this.resellerPrice;
    data['price'] = this.price;
    data['tax'] = this.tax;
    data['discount'] = this.discount;
    return data;
  }
}
