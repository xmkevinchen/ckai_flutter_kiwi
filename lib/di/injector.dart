import 'package:kiwi/kiwi.dart';

import '../main.dart';
import '../weather/api.dart';
import '../weather/repository.dart';
import '../weather/ui/weather_screen.dart';
import '../weather/weather_bloc.dart';

part 'injector.g.dart';

abstract class Injector {
  @Register.singleton(Api)
  @Register.singleton(Repository, from: RepositoryImpl)
  @Register.factory(WeatherBloc)
  @Register.factory(WeatherScreen)
  @Register.singleton(MyApp)
  void configure();

  static void setup() {
    _$Injector().configure();
  }
}
