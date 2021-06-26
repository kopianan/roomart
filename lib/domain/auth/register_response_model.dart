class RegisterResponseModel {
  String? customerID;
  String? parentID;
  String? createdDate;
  String? fullname;
  String? email;

  RegisterResponseModel(
      {this.customerID,
      this.parentID,
      this.createdDate,
      this.fullname,
      this.email});

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    customerID = json['CustomerID'];
    parentID = json['ParentID'];
    createdDate = json['CreatedDate'];
    fullname = json['Fullname'];
    email = json['Email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CustomerID'] = this.customerID;
    data['ParentID'] = this.parentID;
    data['CreatedDate'] = this.createdDate;
    data['Fullname'] = this.fullname;
    data['Email'] = this.email;
    return data;
  }
}
