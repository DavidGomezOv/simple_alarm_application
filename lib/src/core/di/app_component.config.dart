// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:simple_alarm_application/src/core/di/helper_module.dart' as _i7;
import 'package:simple_alarm_application/src/core/utils/app_navigator.dart'
    as _i3;
import 'package:simple_alarm_application/src/home/data_source/local_source/home_local_source.dart'
    as _i5;
import 'package:simple_alarm_application/src/home/data_source/repository/home_repository.dart'
    as _i6;
import 'package:stacked_services/stacked_services.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $appInitGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final helperModule = _$HelperModule();
    gh.lazySingleton<_i3.AppNavigator>(() => helperModule.appNavigator);
    gh.lazySingleton<_i4.BottomSheetService>(
        () => helperModule.bottomSheetService);
    gh.lazySingleton<_i5.HomeLocalSource>(() => _i5.HomeLocalSource.from());
    gh.factory<_i6.HomeRepository>(
        () => _i6.HomeRepository.from(gh<_i5.HomeLocalSource>()));
    return this;
  }
}

class _$HelperModule extends _i7.HelperModule {
  @override
  _i4.BottomSheetService get bottomSheetService => _i4.BottomSheetService();
  @override
  _i3.AppNavigator get appNavigator => _i3.AppNavigator();
}
