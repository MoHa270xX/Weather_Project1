import 'package:dartz/dartz.dart';
import 'package:weather_project/core/errors/failure.dart';
import 'package:weather_project/core/use_cases/use_case.dart';
import 'package:weather_project/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_project/features/weather/domain/repo/weather_repo.dart';

class WeatherUseCase extends UseCase<WeatherEntity,WeatherParams> {
  final WeatherRepo weatherRepo;

  WeatherUseCase({required this.weatherRepo});
  @override

    Future<Either<Failure, WeatherEntity>> call(WeatherParams params) {
      return weatherRepo.getWeatherData(
        latitude: params.latitude,
        longitude: params.longitude,
        date: params.date,
       higherAccuracy: false,
      );
    }
  }


class WeatherParams {
  final double latitude;
  final double longitude;
  final DateTime date;
  final bool higherAccuracy;

  WeatherParams(
    {
    required this.higherAccuracy,
    required this.latitude,
    required this.longitude,
    required this.date,
  });
}
