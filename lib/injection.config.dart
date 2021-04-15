// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/category/category_cubit.dart' as _i7;
import 'application/home/home_cubit.dart' as _i8;
import 'application/item/item_cubit.dart' as _i6;
import 'domain/category/category_repository.dart' as _i3;
import 'domain/home/home_repository.dart' as _i4;
import 'domain/item/item_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ICategoryFacade>(() => _i3.CategoryRepository());
  gh.lazySingleton<_i4.IHomeFacade>(() => _i4.HomeRepository());
  gh.lazySingleton<_i5.IITemFacae>(() => _i5.ItemRepoistory());
  gh.factory<_i6.ItemCubit>(() => _i6.ItemCubit(get<_i5.IITemFacae>()));
  gh.factory<_i7.CategoryCubit>(
      () => _i7.CategoryCubit(get<_i3.ICategoryFacade>()));
  gh.factory<_i8.HomeCubit>(
      () => _i8.HomeCubit(iHomeFacade: get<_i4.IHomeFacade>()));
  return get;
}
