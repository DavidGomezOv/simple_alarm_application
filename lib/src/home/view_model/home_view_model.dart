import 'package:simple_alarm_application/src/core/base/base_view_model.dart';
import 'package:simple_alarm_application/src/core/di/app_component.dart';
import 'package:simple_alarm_application/src/home/services/home_service.dart';

class HomeViewModel extends BaseViewModel {
  final _homeService = locator<HomeService>();

  HomeViewModel(super.buildContext);
}
