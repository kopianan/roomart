// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i14;
import 'application/category/category_cubit.dart' as _i15;
import 'application/home/home_cubit.dart' as _i16;
import 'application/item/item_cubit.dart' as _i10;
import 'application/payment/payment_cubit.dart' as _i11;
import 'application/rajaongkir/rajaongkir_cubit.dart' as _i12;
import 'application/transaction/transaction_cubit.dart' as _i13;
import 'domain/auth/auth_repository.dart' as _i3;
import 'domain/category/category_repository.dart' as _i4;
import 'domain/home/home_repository.dart' as _i5;
import 'domain/item/item_repository.dart' as _i6;
import 'domain/payment_method/payment_method_repository.dart' as _i7;
import 'domain/raja_ongkir/rajaongkir_repository.dart' as _i8;
import 'domain/transaction/transaction_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i3.AuthRepository());
  gh.lazySingleton<_i4.ICategoryFacade>(() => _i4.CategoryRepository());
  gh.lazySingleton<_i5.IHomeFacade>(() => _i5.HomeRepository());
  gh.lazySingleton<_i6.IITemFacae>(() => _i6.ItemRepoistory());
  gh.lazySingleton<_i7.IPaymentMethodFacade>(() => _i7.ItemRepoistory());
  gh.lazySingleton<_i8.ITrajaOngkirFacade>(() => _i8.RajaongkirRepository());
  gh.lazySingleton<_i9.ITransactionFacade>(() => _i9.TransactionRepository());
  gh.factory<_i10.ItemCubit>(() => _i10.ItemCubit(get<_i6.IITemFacae>()));
  gh.factory<_i11.PaymentCubit>(
      () => _i11.PaymentCubit(get<_i7.IPaymentMethodFacade>()));
  gh.factory<_i12.RajaongkirCubit>(
      () => _i12.RajaongkirCubit(get<_i8.ITrajaOngkirFacade>()));
  gh.factory<_i13.TransactionCubit>(
      () => _i13.TransactionCubit(get<_i9.ITransactionFacade>()));
  gh.factory<_i14.AuthCubit>(() => _i14.AuthCubit(get<_i3.IAuthFacade>()));
  gh.factory<_i15.CategoryCubit>(
      () => _i15.CategoryCubit(get<_i4.ICategoryFacade>()));
  gh.factory<_i16.HomeCubit>(
      () => _i16.HomeCubit(iHomeFacade: get<_i5.IHomeFacade>()));
  return get;
}
