class UserRoomartDataModel {
  String userId;
  String parentId;
  String userName;
  String email;
  String phone;
  String password;
  String fullName;
  String typeIds;
  int status;
  String birthDate;
  String address;
  String shipTo1;
  String shipTo2;
  String country;
  String province;
  String city;
  String district;
  String village;
  String terrId1;
  String terrId2;
  String terrId3;
  String terrId4;
  int longitudes;
  int latitudes;
  String regDate;
  String fbToken;
  String googleToken;
  String msgToken;
  String otherToken;
  bool alreadyInSave;
  bool isNew;
  bool modified;

  UserRoomartDataModel(
      {this.userId,
      this.parentId,
      this.userName,
      this.email,
      this.phone,
      this.password,
      this.fullName,
      this.typeIds,
      this.status,
      this.birthDate,
      this.address,
      this.shipTo1,
      this.shipTo2,
      this.country,
      this.province,
      this.city,
      this.district,
      this.village,
      this.terrId1,
      this.terrId2,
      this.terrId3,
      this.terrId4,
      this.longitudes,
      this.latitudes,
      this.regDate,
      this.fbToken,
      this.googleToken,
      this.msgToken,
      this.otherToken,
      this.alreadyInSave,
      this.isNew,
      this.modified});

  UserRoomartDataModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    parentId = json['parentId'];
    userName = json['userName'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    fullName = json['fullName'];
    typeIds = json['typeIds'];
    status = json['status'];
    birthDate = json['birthDate'];
    address = json['address'];
    shipTo1 = json['shipTo1'];
    shipTo2 = json['shipTo2'];
    country = json['country'];
    province = json['province'];
    city = json['city'];
    district = json['district'];
    village = json['village'];
    terrId1 = json['terrId1'];
    terrId2 = json['terrId2'];
    terrId3 = json['terrId3'];
    terrId4 = json['terrId4'];
    longitudes = json['longitudes'];
    latitudes = json['latitudes'];
    regDate = json['regDate'];
    fbToken = json['fbToken'];
    googleToken = json['googleToken'];
    msgToken = json['msgToken'];
    otherToken = json['otherToken'];
    alreadyInSave = json['alreadyInSave'];
    isNew = json['isNew'];
    modified = json['modified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['parentId'] = this.parentId;
    data['userName'] = this.userName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['password'] = this.password;
    data['fullName'] = this.fullName;
    data['typeIds'] = this.typeIds;
    data['status'] = this.status;
    data['birthDate'] = this.birthDate;
    data['address'] = this.address;
    data['shipTo1'] = this.shipTo1;
    data['shipTo2'] = this.shipTo2;
    data['country'] = this.country;
    data['province'] = this.province;
    data['city'] = this.city;
    data['district'] = this.district;
    data['village'] = this.village;
    data['terrId1'] = this.terrId1;
    data['terrId2'] = this.terrId2;
    data['terrId3'] = this.terrId3;
    data['terrId4'] = this.terrId4;
    data['longitudes'] = this.longitudes;
    data['latitudes'] = this.latitudes;
    data['regDate'] = this.regDate;
    data['fbToken'] = this.fbToken;
    data['googleToken'] = this.googleToken;
    data['msgToken'] = this.msgToken;
    data['otherToken'] = this.otherToken;
    data['alreadyInSave'] = this.alreadyInSave;
    data['isNew'] = this.isNew;
    data['modified'] = this.modified;
    return data;
  }
}
