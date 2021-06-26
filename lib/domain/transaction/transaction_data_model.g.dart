// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDataModel _$_$_TransactionDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionDataModel(
    quantityTotal: json['QuantityTotal'] as int?,
    customerName: json['CustomerName'] as String?,
    iD: json['ID'] as String?,
    number: json['Number'] as String?,
    customerID: json['CustomerID'] as String?,
    total: (json['Total'] as num?)?.toDouble(),
    date: json['Date'] as String?,
    cashback: (json['Cashback'] as num?)?.toDouble(),
    status: json['Status'] as int?,
    transType: json['Trans_type'] as String?,
    location: json['Location'] as String?,
    createBy: json['Create_by'] as String?,
    remark: json['Remark'] as String?,
    pmttype: json['Pmttype'] as String?,
    totalDiscount: (json['Total_discount'] as num?)?.toDouble(),
    pmtterm: json['Pmtterm'] as String?,
    statusEnum: json['StatusEnum'] as int?,
    statusName: json['StatusName'] as String?,
    items: (json['Items'] as List<dynamic>?)
        ?.map(
            (e) => TransactionItemDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    transferDate: json['TransferDate'] as String?,
    transferBankAccountName: json['TransferBankAccountName'] as String?,
    transferBankAccount: json['TransferBankAccount'] as String?,
    transferBankImage: json['TransferBankImage'] as String?,
    bankID: json['BankID'] as int?,
    bankAccountName: json['BankAccountName'] as String?,
    bankNo: json['BankNo'] as String?,
    paymentChannel: json['PaymentChannel'] as String?,
    virtualAccountName: json['VirtualAccountName'] as String?,
    virtualAccountNo: json['VirtualAccountNo'] as String?,
    transactionStatus: json['TransactionStatus'] as String?,
  );
}

Map<String, dynamic> _$_$_TransactionDataModelToJson(
        _$_TransactionDataModel instance) =>
    <String, dynamic>{
      'QuantityTotal': instance.quantityTotal,
      'CustomerName': instance.customerName,
      'ID': instance.iD,
      'Number': instance.number,
      'CustomerID': instance.customerID,
      'Total': instance.total,
      'Date': instance.date,
      'Cashback': instance.cashback,
      'Status': instance.status,
      'Trans_type': instance.transType,
      'Location': instance.location,
      'Create_by': instance.createBy,
      'Remark': instance.remark,
      'Pmttype': instance.pmttype,
      'Total_discount': instance.totalDiscount,
      'Pmtterm': instance.pmtterm,
      'StatusEnum': instance.statusEnum,
      'StatusName': instance.statusName,
      'Items': instance.items,
      'TransferDate': instance.transferDate,
      'TransferBankAccountName': instance.transferBankAccountName,
      'TransferBankAccount': instance.transferBankAccount,
      'TransferBankImage': instance.transferBankImage,
      'BankID': instance.bankID,
      'BankAccountName': instance.bankAccountName,
      'BankNo': instance.bankNo,
      'PaymentChannel': instance.paymentChannel,
      'VirtualAccountName': instance.virtualAccountName,
      'VirtualAccountNo': instance.virtualAccountNo,
      'TransactionStatus': instance.transactionStatus,
    };
