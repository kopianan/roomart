import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomart/domain/transaction/models/transaction_item_data_model.dart';

part 'transaction_data_model.freezed.dart';
part 'transaction_data_model.g.dart';

@freezed
 class TransactionDataModel with _$TransactionDataModel {
  factory TransactionDataModel({
    @JsonKey(name: "QuantityTotal") int? quantityTotal,
    @JsonKey(name: "CustomerName") String? customerName,
    @JsonKey(name: "ID") String? iD,
    @JsonKey(name: "Number") String? number,
    @JsonKey(name: "CustomerID") String? customerID,
    @JsonKey(name: "Total") double? total,
    @JsonKey(name: "Date") String? date,
    @JsonKey(name: "Cashback") double? cashback,
    @JsonKey(name: "Status") int? status,
    @JsonKey(name: "Trans_type") String? transType,
    @JsonKey(name: "Location") String? location,
    @JsonKey(name: "Create_by") String? createBy,
    @JsonKey(name: "Remark") String? remark,
    @JsonKey(name: "Pmttype") String? pmttype,
    @JsonKey(name: "Total_discount") double? totalDiscount,
    @JsonKey(name: "Pmtterm") String? pmtterm,
    @JsonKey(name: "StatusEnum") int? statusEnum,
    @JsonKey(name: "StatusName") String? statusName,
    @JsonKey(name: "Items") List<TransactionItemDataModel>? items,
    @JsonKey(name: "TransferDate") String? transferDate,
    @JsonKey(name: "TransferBankAccountName") String? transferBankAccountName,
    @JsonKey(name: "TransferBankAccount") String? transferBankAccount,
    @JsonKey(name: "TransferBankImage") String? transferBankImage,
    @JsonKey(name: "BankID") int? bankID,
    @JsonKey(name: "BankAccountName") String? bankAccountName,
    @JsonKey(name: "BankNo") String? bankNo,
    @JsonKey(name: "PaymentChannel") String? paymentChannel,
    @JsonKey(name: "VirtualAccountName") String? virtualAccountName,
    @JsonKey(name: "VirtualAccountNo") String? virtualAccountNo,
    @JsonKey(name: "TransactionStatus") String? transactionStatus,
  }) = _TransactionDataModel;

  factory TransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataModelFromJson(json);
}
