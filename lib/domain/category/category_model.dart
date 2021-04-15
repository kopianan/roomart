class CategoryModel {
  String _kategoriId;
  String _parentId;
  String _internalCode;
  String _kategoriCode;
  String _description;
  String _picture;
  String _displayStore;
  String _haschild; 
  String _count;
  String _countTotal;

  CategoryModel(
      {String kategoriId,
      String parentId,
      String internalCode,
      String kategoriCode,
      String description,
      String picture,
      String displayStore,
      String hasChild,
      String count, String countTotal}) {
    this._kategoriId = kategoriId;
    this._parentId = parentId;
    this._internalCode = internalCode;
    this._kategoriCode = kategoriCode;
    this._description = description;
    this._picture = picture;
    this._displayStore = displayStore;
    this._haschild= hasChild ; 
    this._count = count;
    this._countTotal = countTotal;
  }

  String get kategoriId => _kategoriId;
  set kategoriId(String kategoriId) => _kategoriId = kategoriId;
  String get parentId => _parentId;
  set parentId(String parentId) => _parentId = parentId;
  String get internalCode => _internalCode;
  set internalCode(String internalCode) => _internalCode = internalCode;
  String get kategoriCode => _kategoriCode;
  set kategoriCode(String kategoriCode) => _kategoriCode = kategoriCode;
  String get description => _description;
  set description(String description) => _description = description;
  String get picture => _picture;
  set picture(String picture) => _picture = picture;
  String get displayStore => _displayStore;
  set displayStore(String displayStore) => _displayStore = displayStore;
  String get count => _count;
  set count(String count) => _count = count;
  String get hasChild => _haschild;
  set hasChild(String hasChild) => _haschild = hasChild;
  String get countTotal => _countTotal;
  set countTotal(String countTotal) => _countTotal = countTotal;

  CategoryModel.fromJson(Map<String, dynamic> json) {
    _kategoriId = json['kategori_id'];
    _parentId = json['parent_id'];
    _internalCode = json['internal_code'];
    _kategoriCode = json['kategori_code'];
    _description = json['description'];
    _picture = json['picture'];
    _displayStore = json['display_store'];
    _haschild = json['has_child'];
    _count = json['count'];
    _countTotal = json['count_total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kategori_id'] = this._kategoriId;
    data['parent_id'] = this._parentId;
    data['internal_code'] = this._internalCode;
    data['kategori_code'] = this._kategoriCode;
    data['description'] = this._description;
    data['picture'] = this._picture;
    data['display_store'] = this._displayStore;
    data['has_child'] = this._haschild;
    data['count'] = this._count;
    data['count_total'] = this._countTotal;
    return data;
  }
}
