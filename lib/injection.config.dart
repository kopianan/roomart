// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i3;
import 'application/category/category_cubit.dart' as _i5;
import 'application/history_detail/history_detail_cubit.dart' as _i7;
import 'application/home/home_cubit.dart' as _i9;
import 'application/item/item_cubit.dart' as _i15;
import 'application/payment/payment_cubit.dart' as _i16;
import 'application/rajaongkir/rajaongkir_cubit.dart' as _i17;
import 'application/transaction/transaction_cubit.dart' as _i18;
import 'domain/auth/auth_repository.dart' as _i4;
import 'domain/category/category_repository.dart' as _i6;
import 'domain/history_detail/history_detail_repository.dart' as _i8;
import 'domain/home/home_repository.dart' as _i10;
import 'domain/item/item_repository.dart' as _i11;
import 'domain/payment_method/payment_method_repository.dart' as _i12;
import 'domain/raja_ongkir/rajaongkir_repository.dart' as _i13;
import 'domain/transaction/transaction_repository.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthCubit>(() => _i3.AuthCubit(get<_i4.IAuthFacade>()));
  gh.factory<_i5.CategoryCubit>(
      () => _i5.CategoryCubit(get<_i6.ICategoryFacade>()));
  gh.factory<_i7.HistoryDetailCubit>(
      () => _i7.HistoryDetailCubit(get<_i8.IHistoryDetailFacade>()));
  gh.factory<_i9.HomeCubit>(
      () => _i9.HomeCubit(iHomeFacade: get<_i10.IHomeFacade>()));
  gh.lazySingleton<_i4.IAuthFacade>(() => _i4.AuthRepository());
  gh.lazySingleton<_i6.ICategoryFacade>(() => _i6.CategoryRepository());
  gh.lazySingleton<_i8.IHistoryDetailFacade>(() => _i8.TransactionRepository());
  gh.lazySingleton<_i10.IHomeFacade>(() => _i10.HomeRepository());
  gh.lazySingleton<_i11.IITemFacae>(() => _i11.ItemRepoistory());
  gh.lazySingleton<_i12.IPaymentMethodFacade>(() => _i12.ItemRepoistory());
  gh.lazySingleton<_i13.ITrajaOngkirFacade>(() => _i13.RajaongkirRepository());
  gh.lazySingleton<_i14.ITransactionFacade>(() => _i14.TransactionRepository());
  gh.factory<_i15.ItemCubit>(() => _i15.ItemCubit(get<_i11.IITemFacae>()));
  gh.factory<_i16.PaymentCubit>(
      () => _i16.PaymentCubit(get<_i12.IPaymentMethodFacade>()));
  gh.factory<_i17.RajaongkirCubit>(
      () => _i17.RajaongkirCubit(get<_i13.ITrajaOngkirFacade>()));
  gh.factory<_i18.TransactionCubit>(
      () => _i18.TransactionCubit(get<_i14.ITransactionFacade>()));
  return get;
}
