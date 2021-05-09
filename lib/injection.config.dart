// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i15;
import 'application/category/category_cubit.dart' as _i16;
import 'application/history_detail/history_detail_cubit.dart' as _i17;
import 'application/home/home_cubit.dart' as _i18;
import 'application/item/item_cubit.dart' as _i11;
import 'application/payment/payment_cubit.dart' as _i12;
import 'application/rajaongkir/rajaongkir_cubit.dart' as _i13;
import 'application/transaction/transaction_cubit.dart' as _i14;
import 'domain/auth/auth_repository.dart' as _i3;
import 'domain/category/category_repository.dart' as _i4;
import 'domain/history_detail/history_detail_repository.dart' as _i5;
import 'domain/home/home_repository.dart' as _i6;
import 'domain/item/item_repository.dart' as _i7;
import 'domain/payment_method/payment_method_repository.dart' as _i8;
import 'domain/raja_ongkir/rajaongkir_repository.dart' as _i9;
import 'domain/transaction/transaction_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i3.AuthRepository());
  gh.lazySingleton<_i4.ICategoryFacade>(() => _i4.CategoryRepository());
  gh.lazySingleton<_i5.IHistoryDetailFacade>(() => _i5.TransactionRepository());
  gh.lazySingleton<_i6.IHomeFacade>(() => _i6.HomeRepository());
  gh.lazySingleton<_i7.IITemFacae>(() => _i7.ItemRepoistory());
  gh.lazySingleton<_i8.IPaymentMethodFacade>(() => _i8.ItemRepoistory());
  gh.lazySingleton<_i9.ITrajaOngkirFacade>(() => _i9.RajaongkirRepository());
  gh.lazySingleton<_i10.ITransactionFacade>(() => _i10.TransactionRepository());
  gh.factory<_i11.ItemCubit>(() => _i11.ItemCubit(get<_i7.IITemFacae>()));
  gh.factory<_i12.PaymentCubit>(
      () => _i12.PaymentCubit(get<_i8.IPaymentMethodFacade>()));
  gh.factory<_i13.RajaongkirCubit>(
      () => _i13.RajaongkirCubit(get<_i9.ITrajaOngkirFacade>()));
  gh.factory<_i14.TransactionCubit>(
      () => _i14.TransactionCubit(get<_i10.ITransactionFacade>()));
  gh.factory<_i15.AuthCubit>(() => _i15.AuthCubit(get<_i3.IAuthFacade>()));
  gh.factory<_i16.CategoryCubit>(
      () => _i16.CategoryCubit(get<_i4.ICategoryFacade>()));
  gh.factory<_i17.HistoryDetailCubit>(
      () => _i17.HistoryDetailCubit(get<_i5.IHistoryDetailFacade>()));
  gh.factory<_i18.HomeCubit>(
      () => _i18.HomeCubit(iHomeFacade: get<_i6.IHomeFacade>()));
  return get;
}
