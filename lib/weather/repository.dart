import 'api.dart';
import 'model/weather_response_model.dart';

abstract class Repository {
  Future<WeatherResponse> fetchLondonWeather();
}

class RepositoryImpl implements Repository {
  Api _api;

  RepositoryImpl(this._api);

  @override
  Future<WeatherResponse> fetchLondonWeather() => _api.fetchLondonWeather();
}
