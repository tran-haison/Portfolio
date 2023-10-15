// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/email_controller.dart' as _i5;
import '../../data/email_service.dart' as _i4;
import 'app_module.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i3.Dio>(appModule.dio);
    gh.singleton<_i4.EmailService>(_i4.EmailService(gh<_i3.Dio>()));
    gh.singleton<_i5.EmailController>(
        _i5.EmailController(gh<_i4.EmailService>()));
    return this;
  }
}

class _$AppModule extends _i6.AppModule {}
