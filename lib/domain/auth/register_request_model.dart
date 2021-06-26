class RegisterRequestModel {
  String? token;
  String? customerID;
  String? email;
  String? fullname;
  String? parentID;
  String? isReseller;
  String? password;
  DateTime? dateTime;

  RegisterRequestModel(
      {this.token,
      this.customerID,
      this.email,
      this.fullname,
      this.parentID,
      this.isReseller,
      this.password});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    token = json['Token'];
    customerID = json['CustomerID'];
    email = json['Email'];
    fullname = json['Fullname'];
    parentID = json['ParentID'];
    isReseller = json['IsReseller'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Token'] = this.token;
    data['CustomerID'] = this.customerID;
    data['Email'] = this.email;
    data['Fullname'] = this.fullname;
    data['ParentID'] = this.parentID;
    data['IsReseller'] = this.isReseller;
    data['Password'] = this.password;
    return data;
  }
}
