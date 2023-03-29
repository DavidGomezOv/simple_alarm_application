import 'package:flutter/material.dart';
import 'package:simple_alarm_application/src/core/utils/app_dialogs.dart';
import 'package:stacked/stacked.dart';

abstract class BaseViewModel extends ReactiveViewModel {
  final BuildContext buildContext;

  BaseViewModel(this.buildContext);

  Future<void> handleApiResponse(dynamic exception, {Function? click}) async {
    showErrorSheet(
      exception.toString(),
      okClick: click,
    );
  }

  void showSnackBar(String messages) {
    ScaffoldMessenger.of(buildContext)
        .showSnackBar(SnackBar(content: Text(messages)));
  }
}
