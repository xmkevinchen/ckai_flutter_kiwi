// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// InjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  void configure() {
    final Container container = Container();
    container.registerSingleton((c) => Api());
    container.registerSingleton<Repository, RepositoryImpl>(
        (c) => RepositoryImpl(c<Api>()));
    container.registerSingleton((c) => MyApp(c<WeatherScreen>()));
    container.registerFactory((c) => WeatherBloc(c<Repository>()));
    container.registerFactory((c) => WeatherScreen(c<WeatherBloc>()));
  }
}
