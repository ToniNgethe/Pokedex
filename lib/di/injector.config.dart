// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/bloc/pokemon_cubit.dart' as _i8;
import '../data/local/database/database.dart' as _i4;
import '../data/local/database/database_module.dart' as _i10;
import '../data/remote/api_provider.dart' as _i5;
import '../data/remote/dio_client.dart' as _i9;
import '../data/repositories/local_repository.dart' as _i6;
import '../data/repositories/remote_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioClient = _$DioClient();
  final databaseModule = _$DatabaseModule();
  gh.lazySingleton<_i3.Dio>(() => dioClient.dio);
  await gh.factoryAsync<_i4.PokemonDatabase>(() => databaseModule.database,
      preResolve: true);
  gh.singleton<_i5.ApiProvider>(_i5.ApiProvider(get<_i3.Dio>()));
  gh.factory<_i6.LocalRepository>(
      () => _i6.LocalRepositoryImpl(get<_i4.PokemonDatabase>()));
  gh.factory<_i7.RemoteRepository>(
      () => _i7.RemoteRepositoryImpl(get<_i5.ApiProvider>()));
  gh.factory<_i8.PokemonCubit>(() => _i8.PokemonCubit(
      get<_i7.RemoteRepository>(), get<_i6.LocalRepository>()));
  return get;
}

class _$DioClient extends _i9.DioClient {}

class _$DatabaseModule extends _i10.DatabaseModule {}
