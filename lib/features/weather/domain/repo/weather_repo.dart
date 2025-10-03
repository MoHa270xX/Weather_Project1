import 'package:dartz/dartz.dart';
import 'package:weather_project/core/errors/failure.dart';
import 'package:weather_project/features/weather/domain/entities/weather_entity.dart';

abstract class WeatherRepo {
  Future<Either<Failure, WeatherEntity>> getWeatherData({
    required double latitude,
    required double longitude,
    required DateTime date,
    required bool higherAccuracy,
  });
}
