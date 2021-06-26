// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'trans_post_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransPostDataModel _$TransPostDataModelFromJson(Map<String, dynamic> json) {
  return _TransPostDataModel.fromJson(json);
}

/// @nodoc
class _$TransPostDataModelTearOff {
  const _$TransPostDataModelTearOff();

  _TransPostDataModel call(
      {@JsonKey(name: "trans_no") String? transNo,
      @JsonKey(name: "trans_type") String? transType,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "trans_dt") String? transDt,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "create_by") String? createBy,
      @JsonKey(name: "remark") String? remark,
      @JsonKey(name: "pmttype") String? pmttype,
      @JsonKey(name: "paymentchannel") String? paymentchannel,
      @JsonKey(name: "total_discount") String? pmtterm,
      @JsonKey(name: "pmtterm") int? bankId,
      @JsonKey(name: "bankId") String? totalDiscount,
      @JsonKey(name: "parent_id") String? parentId,
      @JsonKey(name: "is_reseller") bool? isReseller,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "fullname") String? fullname,
      @JsonKey(name: "details") List<BoughtItemDataModel?>? details}) {
    return _TransPostDataModel(
      transNo: transNo,
      transType: transType,
      location: location,
      transDt: transDt,
      customer: customer,
      createBy: createBy,
      remark: remark,
      pmttype: pmttype,
      paymentchannel: paymentchannel,
      pmtterm: pmtterm,
      bankId: bankId,
      totalDiscount: totalDiscount,
      parentId: parentId,
      isReseller: isReseller,
      email: email,
      fullname: fullname,
      details: details,
    );
  }

  TransPostDataModel fromJson(Map<String, Object> json) {
    return TransPostDataModel.fromJson(json);
  }
}

/// @nodoc
const $TransPostDataModel = _$TransPostDataModelTearOff();

/// @nodoc
mixin _$TransPostDataModel {
  @JsonKey(name: "trans_no")
  String? get transNo => throw _privateConstructorUsedError;
  @JsonKey(name: "trans_type")
  String? get transType => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "trans_dt")
  String? get transDt => throw _privateConstructorUsedError;
  @JsonKey(name: "customer")
  String? get customer => throw _privateConstructorUsedError;
  @JsonKey(name: "create_by")
  String? get createBy => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String? get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "pmttype")
  String? get pmttype => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentchannel")
  String? get paymentchannel => throw _privateConstructorUsedError;
  @JsonKey(name: "total_discount")
  String? get pmtterm => throw _privateConstructorUsedError;
  @JsonKey(name: "pmtterm")
  int? get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: "bankId")
  String? get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_id")
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_reseller")
  bool? get isReseller => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "fullname")
  String? get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: "details")
  List<BoughtItemDataModel?>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransPostDataModelCopyWith<TransPostDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransPostDataModelCopyWith<$Res> {
  factory $TransPostDataModelCopyWith(
          TransPostDataModel value, $Res Function(TransPostDataModel) then) =
      _$TransPostDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "trans_no") String? transNo,
      @JsonKey(name: "trans_type") String? transType,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "trans_dt") String? transDt,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "create_by") String? createBy,
      @JsonKey(name: "remark") String? remark,
      @JsonKey(name: "pmttype") String? pmttype,
      @JsonKey(name: "paymentchannel") String? paymentchannel,
      @JsonKey(name: "total_discount") String? pmtterm,
      @JsonKey(name: "pmtterm") int? bankId,
      @JsonKey(name: "bankId") String? totalDiscount,
      @JsonKey(name: "parent_id") String? parentId,
      @JsonKey(name: "is_reseller") bool? isReseller,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "fullname") String? fullname,
      @JsonKey(name: "details") List<BoughtItemDataModel?>? details});
}

/// @nodoc
class _$TransPostDataModelCopyWithImpl<$Res>
    implements $TransPostDataModelCopyWith<$Res> {
  _$TransPostDataModelCopyWithImpl(this._value, this._then);

  final TransPostDataModel _value;
  // ignore: unused_field
  final $Res Function(TransPostDataModel) _then;

  @override
  $Res call({
    Object? transNo = freezed,
    Object? transType = freezed,
    Object? location = freezed,
    Object? transDt = freezed,
    Object? customer = freezed,
    Object? createBy = freezed,
    Object? remark = freezed,
    Object? pmttype = freezed,
    Object? paymentchannel = freezed,
    Object? pmtterm = freezed,
    Object? bankId = freezed,
    Object? totalDiscount = freezed,
    Object? parentId = freezed,
    Object? isReseller = freezed,
    Object? email = freezed,
    Object? fullname = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      transNo: transNo == freezed
          ? _value.transNo
          : transNo // ignore: cast_nullable_to_non_nullable
              as String?,
      transType: transType == freezed
          ? _value.transType
          : transType // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      transDt: transDt == freezed
          ? _value.transDt
          : transDt // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      createBy: createBy == freezed
          ? _value.createBy
          : createBy // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      pmttype: pmttype == freezed
          ? _value.pmttype
          : pmttype // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentchannel: paymentchannel == freezed
          ? _value.paymentchannel
          : paymentchannel // ignore: cast_nullable_to_non_nullable
              as String?,
      pmtterm: pmtterm == freezed
          ? _value.pmtterm
          : pmtterm // ignore: cast_nullable_to_non_nullable
              as String?,
      bankId: bankId == freezed
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDiscount: totalDiscount == freezed
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReseller: isReseller == freezed
          ? _value.isReseller
          : isReseller // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<BoughtItemDataModel?>?,
    ));
  }
}

/// @nodoc
abstract class _$TransPostDataModelCopyWith<$Res>
    implements $TransPostDataModelCopyWith<$Res> {
  factory _$TransPostDataModelCopyWith(
          _TransPostDataModel value, $Res Function(_TransPostDataModel) then) =
      __$TransPostDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "trans_no") String? transNo,
      @JsonKey(name: "trans_type") String? transType,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "trans_dt") String? transDt,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "create_by") String? createBy,
      @JsonKey(name: "remark") String? remark,
      @JsonKey(name: "pmttype") String? pmttype,
      @JsonKey(name: "paymentchannel") String? paymentchannel,
      @JsonKey(name: "total_discount") String? pmtterm,
      @JsonKey(name: "pmtterm") int? bankId,
      @JsonKey(name: "bankId") String? totalDiscount,
      @JsonKey(name: "parent_id") String? parentId,
      @JsonKey(name: "is_reseller") bool? isReseller,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "fullname") String? fullname,
      @JsonKey(name: "details") List<BoughtItemDataModel?>? details});
}

/// @nodoc
class __$TransPostDataModelCopyWithImpl<$Res>
    extends _$TransPostDataModelCopyWithImpl<$Res>
    implements _$TransPostDataModelCopyWith<$Res> {
  __$TransPostDataModelCopyWithImpl(
      _TransPostDataModel _value, $Res Function(_TransPostDataModel) _then)
      : super(_value, (v) => _then(v as _TransPostDataModel));

  @override
  _TransPostDataModel get _value => super._value as _TransPostDataModel;

  @override
  $Res call({
    Object? transNo = freezed,
    Object? transType = freezed,
    Object? location = freezed,
    Object? transDt = freezed,
    Object? customer = freezed,
    Object? createBy = freezed,
    Object? remark = freezed,
    Object? pmttype = freezed,
    Object? paymentchannel = freezed,
    Object? pmtterm = freezed,
    Object? bankId = freezed,
    Object? totalDiscount = freezed,
    Object? parentId = freezed,
    Object? isReseller = freezed,
    Object? email = freezed,
    Object? fullname = freezed,
    Object? details = freezed,
  }) {
    return _then(_TransPostDataModel(
      transNo: transNo == freezed
          ? _value.transNo
          : transNo // ignore: cast_nullable_to_non_nullable
              as String?,
      transType: transType == freezed
          ? _value.transType
          : transType // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      transDt: transDt == freezed
          ? _value.transDt
          : transDt // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      createBy: createBy == freezed
          ? _value.createBy
          : createBy // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      pmttype: pmttype == freezed
          ? _value.pmttype
          : pmttype // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentchannel: paymentchannel == freezed
          ? _value.paymentchannel
          : paymentchannel // ignore: cast_nullable_to_non_nullable
              as String?,
      pmtterm: pmtterm == freezed
          ? _value.pmtterm
          : pmtterm // ignore: cast_nullable_to_non_nullable
              as String?,
      bankId: bankId == freezed
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDiscount: totalDiscount == freezed
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReseller: isReseller == freezed
          ? _value.isReseller
          : isReseller // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<BoughtItemDataModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransPostDataModel implements _TransPostDataModel {
  _$_TransPostDataModel(
      {@JsonKey(name: "trans_no") this.transNo,
      @JsonKey(name: "trans_type") this.transType,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "trans_dt") this.transDt,
      @JsonKey(name: "customer") this.customer,
      @JsonKey(name: "create_by") this.createBy,
      @JsonKey(name: "remark") this.remark,
      @JsonKey(name: "pmttype") this.pmttype,
      @JsonKey(name: "paymentchannel") this.paymentchannel,
      @JsonKey(name: "total_discount") this.pmtterm,
      @JsonKey(name: "pmtterm") this.bankId,
      @JsonKey(name: "bankId") this.totalDiscount,
      @JsonKey(name: "parent_id") this.parentId,
      @JsonKey(name: "is_reseller") this.isReseller,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "fullname") this.fullname,
      @JsonKey(name: "details") this.details});

  factory _$_TransPostDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TransPostDataModelFromJson(json);

  @override
  @JsonKey(name: "trans_no")
  final String? transNo;
  @override
  @JsonKey(name: "trans_type")
  final String? transType;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "trans_dt")
  final String? transDt;
  @override
  @JsonKey(name: "customer")
  final String? customer;
  @override
  @JsonKey(name: "create_by")
  final String? createBy;
  @override
  @JsonKey(name: "remark")
  final String? remark;
  @override
  @JsonKey(name: "pmttype")
  final String? pmttype;
  @override
  @JsonKey(name: "paymentchannel")
  final String? paymentchannel;
  @override
  @JsonKey(name: "total_discount")
  final String? pmtterm;
  @override
  @JsonKey(name: "pmtterm")
  final int? bankId;
  @override
  @JsonKey(name: "bankId")
  final String? totalDiscount;
  @override
  @JsonKey(name: "parent_id")
  final String? parentId;
  @override
  @JsonKey(name: "is_reseller")
  final bool? isReseller;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "fullname")
  final String? fullname;
  @override
  @JsonKey(name: "details")
  final List<BoughtItemDataModel?>? details;

  @override
  String toString() {
    return 'TransPostDataModel(transNo: $transNo, transType: $transType, location: $location, transDt: $transDt, customer: $customer, createBy: $createBy, remark: $remark, pmttype: $pmttype, paymentchannel: $paymentchannel, pmtterm: $pmtterm, bankId: $bankId, totalDiscount: $totalDiscount, parentId: $parentId, isReseller: $isReseller, email: $email, fullname: $fullname, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransPostDataModel &&
            (identical(other.transNo, transNo) ||
                const DeepCollectionEquality()
                    .equals(other.transNo, transNo)) &&
            (identical(other.transType, transType) ||
                const DeepCollectionEquality()
                    .equals(other.transType, transType)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.transDt, transDt) ||
                const DeepCollectionEquality()
                    .equals(other.transDt, transDt)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.createBy, createBy) ||
                const DeepCollectionEquality()
                    .equals(other.createBy, createBy)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.pmttype, pmttype) ||
                const DeepCollectionEquality()
                    .equals(other.pmttype, pmttype)) &&
            (identical(other.paymentchannel, paymentchannel) ||
                const DeepCollectionEquality()
                    .equals(other.paymentchannel, paymentchannel)) &&
            (identical(other.pmtterm, pmtterm) ||
                const DeepCollectionEquality()
                    .equals(other.pmtterm, pmtterm)) &&
            (identical(other.bankId, bankId) ||
                const DeepCollectionEquality().equals(other.bankId, bankId)) &&
            (identical(other.totalDiscount, totalDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.totalDiscount, totalDiscount)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.isReseller, isReseller) ||
                const DeepCollectionEquality()
                    .equals(other.isReseller, isReseller)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transNo) ^
      const DeepCollectionEquality().hash(transType) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(transDt) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(createBy) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(pmttype) ^
      const DeepCollectionEquality().hash(paymentchannel) ^
      const DeepCollectionEquality().hash(pmtterm) ^
      const DeepCollectionEquality().hash(bankId) ^
      const DeepCollectionEquality().hash(totalDiscount) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(isReseller) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$TransPostDataModelCopyWith<_TransPostDataModel> get copyWith =>
      __$TransPostDataModelCopyWithImpl<_TransPostDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransPostDataModelToJson(this);
  }
}

abstract class _TransPostDataModel implements TransPostDataModel {
  factory _TransPostDataModel(
          {@JsonKey(name: "trans_no") String? transNo,
          @JsonKey(name: "trans_type") String? transType,
          @JsonKey(name: "location") String? location,
          @JsonKey(name: "trans_dt") String? transDt,
          @JsonKey(name: "customer") String? customer,
          @JsonKey(name: "create_by") String? createBy,
          @JsonKey(name: "remark") String? remark,
          @JsonKey(name: "pmttype") String? pmttype,
          @JsonKey(name: "paymentchannel") String? paymentchannel,
          @JsonKey(name: "total_discount") String? pmtterm,
          @JsonKey(name: "pmtterm") int? bankId,
          @JsonKey(name: "bankId") String? totalDiscount,
          @JsonKey(name: "parent_id") String? parentId,
          @JsonKey(name: "is_reseller") bool? isReseller,
          @JsonKey(name: "email") String? email,
          @JsonKey(name: "fullname") String? fullname,
          @JsonKey(name: "details") List<BoughtItemDataModel?>? details}) =
      _$_TransPostDataModel;

  factory _TransPostDataModel.fromJson(Map<String, dynamic> json) =
      _$_TransPostDataModel.fromJson;

  @override
  @JsonKey(name: "trans_no")
  String? get transNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "trans_type")
  String? get transType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "trans_dt")
  String? get transDt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer")
  String? get customer => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "create_by")
  String? get createBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "remark")
  String? get remark => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pmttype")
  String? get pmttype => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "paymentchannel")
  String? get paymentchannel => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_discount")
  String? get pmtterm => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pmtterm")
  int? get bankId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "bankId")
  String? get totalDiscount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "parent_id")
  String? get parentId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_reseller")
  bool? get isReseller => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "fullname")
  String? get fullname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "details")
  List<BoughtItemDataModel?>? get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransPostDataModelCopyWith<_TransPostDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
