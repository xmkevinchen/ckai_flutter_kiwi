import 'package:rxdart/rxdart.dart';

import 'model/weather_response_model.dart';
import 'repository.dart';

class WeatherBloc {
  Repository _repository;

  WeatherBloc(this._repository);

  final _weatherFetcher = PublishSubject<WeatherResponse>();

  Stream<WeatherResponse> get weather => _weatherFetcher.stream;
  
  fetchLondonWeather() async {
    WeatherResponse weatherResponse = await _repository.fetchLondonWeather();
    _weatherFetcher.sink.add(weatherResponse);
  }

  dispose() {
    _weatherFetcher.close();
  }
}
