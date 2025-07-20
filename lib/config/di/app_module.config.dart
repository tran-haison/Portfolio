// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/email_controller.dart' as _i1068;
import '../../data/email_service.dart' as _i276;
import 'app_module.dart' as _i460;

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
    final appModule = _$AppModule();
    gh.singleton<_i361.Dio>(() => appModule.dio);
    gh.singleton<_i276.EmailService>(() => _i276.EmailService(gh<_i361.Dio>()));
    gh.singleton<_i1068.EmailController>(
        () => _i1068.EmailController(gh<_i276.EmailService>()));
    return this;
  }
}

class _$AppModule extends _i460.AppModule {}
