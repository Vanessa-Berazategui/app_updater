// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_updater/app/app.dart' as _i120;
import 'package:app_updater/app/dependencies/api_module.dart' as _i1006;
import 'package:app_updater/app/dependencies/blocs_module.dart' as _i701;
import 'package:app_updater/app/dependencies/datasources_module.dart' as _i1070;
import 'package:app_updater/app/dependencies/repositories_module.dart' as _i67;
import 'package:app_updater/app/dependencies/theme_module.dart' as _i762;
import 'package:app_updater/app/dependencies/usecases_module.dart' as _i740;
import 'package:app_updater/app/environment/app_environment.dart' as _i666;
import 'package:app_updater/app/environment/app_environment_development.dart'
    as _i613;
import 'package:app_updater/app/environment/app_environment_production.dart'
    as _i206;
import 'package:app_updater/app/environment/app_environment_staging.dart'
    as _i925;
import 'package:app_updater/app/theme/material_theme.dart' as _i628;
import 'package:app_updater/home/home.dart' as _i745;
import 'package:app_updater_data/app_updater_data.dart' as _i978;
import 'package:app_updater_domain/app_updater_domain.dart' as _i785;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

const String _dev = 'dev';
const String _stg = 'stg';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appThemeModule = _$AppThemeModule();
    final appApiModule = _$AppApiModule();
    final appDataSourcesModule = _$AppDataSourcesModule();
    final appRepositoriesModule = _$AppRepositoriesModule();
    final appUseCasesModule = _$AppUseCasesModule();
    final appBlocsModule = _$AppBlocsModule();
    gh.lazySingleton<_i628.MaterialTheme>(() => appThemeModule.materialTheme());
    gh.lazySingleton<_i120.AppEnvironment>(
      () => _i613.AppEnvironmentDevelopment(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i978.HttpAuthorizationInterceptor>(() =>
        appApiModule.httpAuthorizationInterceptor(gh<_i666.AppEnvironment>()));
    gh.lazySingleton<_i120.AppEnvironment>(
      () => _i925.AppEnvironmentStaging(),
      registerFor: {_stg},
    );
    gh.lazySingleton<_i120.AppEnvironment>(
      () => _i206.AppEnvironmentProduction(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i978.AppUpdaterApi>(() => appApiModule.appUpdaterApi(
          gh<_i666.AppEnvironment>(),
          gh<_i978.HttpAuthorizationInterceptor>(),
        ));
    gh.lazySingleton<_i978.InformationDataSource>(() =>
        appDataSourcesModule.informationDataSource(gh<_i978.AppUpdaterApi>()));
    gh.lazySingleton<_i785.InformationRepository>(() => appRepositoriesModule
        .informationRepository(gh<_i978.InformationDataSource>()));
    gh.lazySingleton<_i785.GetPackageInfoUseCase>(() => appUseCasesModule
        .getPackageInfoUseCase(gh<_i785.InformationRepository>()));
    gh.lazySingleton<_i785.GetBackendInfoUseCase>(() => appUseCasesModule
        .getBackendInfoUseCase(gh<_i785.InformationRepository>()));
    gh.factory<_i745.HomeBloc>(() => appBlocsModule.homeBloc(
          gh<_i785.GetPackageInfoUseCase>(),
          gh<_i785.GetBackendInfoUseCase>(),
        ));
    return this;
  }
}

class _$AppThemeModule extends _i762.AppThemeModule {}

class _$AppApiModule extends _i1006.AppApiModule {}

class _$AppDataSourcesModule extends _i1070.AppDataSourcesModule {}

class _$AppRepositoriesModule extends _i67.AppRepositoriesModule {}

class _$AppUseCasesModule extends _i740.AppUseCasesModule {}

class _$AppBlocsModule extends _i701.AppBlocsModule {}
