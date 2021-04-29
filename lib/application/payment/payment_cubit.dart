import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/payment_method/payment_method_data_model.dart';
import 'package:roomart/domain/payment_method/payment_method_repository.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.iPaymentMethodFacade) : super(PaymentState.initial());
  final IPaymentMethodFacade iPaymentMethodFacade;

  void getPaymentMethodList() async {
    emit(PaymentState.loading());
    try {
      final _result = await iPaymentMethodFacade.getPaymentMethod();
      _result.fold(
        (l) => emit(PaymentState.error(l.toString())),
        (r) => emit(PaymentState.onGetPaymentMethod(r)),
      );
    } catch (e) {
      emit(PaymentState.error(e.toString()));
    }
  }
}
