import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_project/core/errors/failure.dart';
import 'package:weather_project/features/weather/data/datasources/weather_local_data_source.dart';
import 'package:weather_project/features/weather/data/datasources/wether_remot_data_source.dart';
import 'package:weather_project/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_project/features/weather/domain/repo/weather_repo.dart';

class WeatherRepoImple extends WeatherRepo {
  final WeatherRemoteDataSource weatherRemoteDataSource;
  final WeatherLocalDataSource weatherLocalDataSource;

  WeatherRepoImple({
    required this.weatherRemoteDataSource,
    required this.weatherLocalDataSource,
  });

  @override
  Future<Either<Failure, WeatherEntity>> getWeatherData({
    required double latitude,
    required double longitude,
    required DateTime date,
    required bool higherAccuracy,
  }) async {
    try {
      final localWeather = await weatherLocalDataSource.getWeatherData(
        latitude: latitude,
        longitude: longitude,
        date: date,
        higherAccuracy:
            higherAccuracy,
      );

      if (localWeather != null) {
        return right(localWeather);
      }

      var remoteWeather = await weatherRemoteDataSource.getWeatherData(
        latitude: latitude,
        longitude: longitude,
        date: date,
        higherAccuracy: higherAccuracy,
      );

      return right(remoteWeather);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
