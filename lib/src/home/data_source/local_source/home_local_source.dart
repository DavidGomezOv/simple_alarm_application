import 'package:injectable/injectable.dart';
import 'package:simple_alarm_application/src/core/base/base_datasource.dart';

@lazySingleton
class HomeLocalSource implements BaseDatasource {
  @factoryMethod
  HomeLocalSource.from();
}
