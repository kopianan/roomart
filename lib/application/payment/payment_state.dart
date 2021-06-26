part of 'payment_cubit.dart';

@freezed
 class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.loading() = _Loading;
  const factory PaymentState.error(String error) = _Error;
  const factory PaymentState.onGetPaymentMethod(
      List<PaymentMethodDataModel> method) = _OnGetPaymentMethod;
}
