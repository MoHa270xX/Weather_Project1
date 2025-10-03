part of 'weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherSuccess extends WeatherState {
  final WeatherEntity weatherData;

  WeatherSuccess(this.weatherData);
}

final class WeatherFailur extends WeatherState {
  final String errmassage;

  WeatherFailur(this.errmassage);
}

final class WeatherLoading extends WeatherState {}
