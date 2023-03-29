import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simple_alarm_application/routes.dart';
import 'package:simple_alarm_application/src/core/di/app_component.dart';
import 'package:simple_alarm_application/src/core/dialogs/error_bottom_sheet.dart';
import 'package:simple_alarm_application/src/core/enums/enums.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  configureGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  _setupBottomSheetUi();
  appNavigator.config(defaultTransitionStyle: Transition.downToUp);
  runApp(const MyApp());
}

void _setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();
  final builders = {
    DialogType.error: (context, sheetRequest, completer) =>
        ErrorBottomSheet(request: sheetRequest, completer: completer),
  };
  bottomSheetService.setCustomSheetBuilders(builders);
}

final appNavigatorKey = StackedService.navigatorKey;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: kDebugMode,
      title: 'Simple Alarm Application',
      initialRoute: Routes.home,
      navigatorKey: appNavigatorKey,
      routes: Routes.routes,
    );
  }
}
