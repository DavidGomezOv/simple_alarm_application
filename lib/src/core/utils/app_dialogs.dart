import 'package:simple_alarm_application/src/core/di/app_component.dart';
import 'package:simple_alarm_application/src/core/enums/enums.dart';

void showErrorSheet(
  String message, {
  String? okButton,
  Function? okClick,
  bool oneButton = true,
}) async {
  await bottomSheetService.showCustomSheet(
    variant: DialogType.error,
    description: message,
    mainButtonTitle: 'Accept',
    isScrollControlled: true,
    barrierDismissible: false,
  );
  okClick?.call();
}