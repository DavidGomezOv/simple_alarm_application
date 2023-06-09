import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_alarm_application/src/core/di/app_component.config.dart';
import 'package:simple_alarm_application/src/core/utils/app_navigator.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
  initializerName: r'$appInitGetIt',
)
void configureGetIt() => locator.$appInitGetIt();

final bottomSheetService = locator<BottomSheetService>();

final appNavigator = locator<AppNavigator>();
