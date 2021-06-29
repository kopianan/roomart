import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_data_model.freezed.dart';
part 'bank_data_model.g.dart';

@freezed
class BankDataModel with _$BankDataModel {
  factory BankDataModel(
          {@Default(0) @JsonKey(name: 'BankID') int bankId,
          @Default("") @JsonKey(name: 'BankName') String bankName,
          @Default("") @JsonKey(name: 'AccountNo') String accountNo,
          @Default("") @JsonKey(name: 'AccountName') String accountName,
          @Default(0) @JsonKey(name: 'Image') int image,
          @Default(false) @JsonKey(name: 'Status') bool status,
          @Default(0) @JsonKey(name: 'ModifiedBy') int modifiedBy,
          @Default("") @JsonKey(name: 'ModifiedDate') String modifiedDate}) =
      _BankDataModel;

  factory BankDataModel.fromJson(Map<String, dynamic> json) =>
      _$BankDataModelFromJson(json);
}
