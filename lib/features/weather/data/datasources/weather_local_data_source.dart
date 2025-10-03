import 'package:hive_flutter/adapters.dart';
import 'package:weather_project/constants.dart';
import 'package:weather_project/features/weather/domain/entities/weather_entity.dart';

abstract class WeatherLocalDataSource {
  WeatherEntity? getWeatherData({
    required double latitude,
    required double longitude,
    required DateTime date,
    higherAccuracy = false,
  });
}

class WeatherLocalDataSourceImple extends WeatherLocalDataSource {
  @override
  WeatherEntity getWeatherData({
    required double latitude,
    required double longitude,
    required DateTime date,
    higherAccuracy = false,
  }) {
     var box = Hive.box<WeatherEntity>(kWeatherBox);

    final key = _generateKey(latitude, longitude, date);

    final weatherData = box.get(key);

    return weatherData!;
  }
}

String _generateKey(double lat, double lon, DateTime date) {
  final formattedDate = "${date.year}-${date.month}-${date.day}";
  return "$lat-$lon-$formattedDate";
}