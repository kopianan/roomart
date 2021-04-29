// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i12;
import 'application/category/category_cubit.dart' as _i13;
import 'application/home/home_cubit.dart' as _i14;
import 'application/item/item_cubit.dart' as _i9;
import 'application/rajaongkir/rajaongkir_cubit.dart' as _i10;
import 'application/transaction/transaction_cubit.dart' as _i11;
import 'domain/auth/auth_repository.dart' as _i3;
import 'domain/category/category_repository.dart' as _i4;
import 'domain/home/home_repository.dart' as _i5;
import 'domain/item/item_repository.dart' as _i6;
import 'domain/raja_ongkir/rajaongkir_repository.dart' as _i7;
import 'domain/transaction/transaction_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i3.AuthRepository());
  gh.lazySingleton<_i4.ICategoryFacade>(() => _i4.CategoryRepository());
  gh.lazySingleton<_i5.IHomeFacade>(() => _i5.HomeRepository());
  gh.lazySingleton<_i6.IITemFacae>(() => _i6.ItemRepoistory());
  gh.lazySingleton<_i7.ITrajaOngkirFacade>(() => _i7.RajaongkirRepository());
  gh.lazySingleton<_i8.ITransactionFacade>(() => _i8.TransactionRepository());
  gh.factory<_i9.ItemCubit>(() => _i9.ItemCubit(get<_i6.IITemFacae>()));
  gh.factory<_i10.RajaongkirCubit>(
      () => _i10.RajaongkirCubit(get<_i7.ITrajaOngkirFacade>()));
  gh.factory<_i11.TransactionCubit>(
      () => _i11.TransactionCubit(get<_i8.ITransactionFacade>()));
  gh.factory<_i12.AuthCubit>(() => _i12.AuthCubit(get<_i3.IAuthFacade>()));
  gh.factory<_i13.CategoryCubit>(
      () => _i13.CategoryCubit(get<_i4.ICategoryFacade>()));
  gh.factory<_i14.HomeCubit>(
      () => _i14.HomeCubit(iHomeFacade: get<_i5.IHomeFacade>()));
  return get;
}
