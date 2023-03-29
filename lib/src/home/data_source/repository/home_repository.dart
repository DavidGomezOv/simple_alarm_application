import 'package:injectable/injectable.dart';
import 'package:simple_alarm_application/src/home/data_source/local_source/home_local_source.dart';

@injectable
class HomeRepository {
  final HomeLocalSource _localSource;

  @factoryMethod
  HomeRepository.from(this._localSource);
}
