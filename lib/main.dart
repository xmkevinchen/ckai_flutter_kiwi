import 'package:ckai_flutter_kiwi/di/injector.dart';
import 'package:ckai_flutter_kiwi/weather/ui/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

void main() {
  Injector.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() : super();
  @override
  Widget build(BuildContext context) {
    var container = kiwi.Container();
    var weatherScreen = container.resolve<WeatherScreen>();
    return MaterialApp(
      home: Scaffold(body: weatherScreen),
    );
  }
}
