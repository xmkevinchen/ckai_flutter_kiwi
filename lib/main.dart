import 'package:ckai_flutter_kiwi/di/injector.dart';
import 'package:ckai_flutter_kiwi/weather/ui/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

void main() {
  Injector.setup();
  var container = kiwi.Container();
  var app = container.resolve<MyApp>();
  runApp(app);
}

class MyApp extends StatelessWidget {
  final WeatherScreen _weatherScreen;
  MyApp(this._weatherScreen) : super();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: _weatherScreen),
    );
  }
}
