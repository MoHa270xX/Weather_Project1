import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_project/core/errors/failure.dart';
import 'package:weather_project/features/weather/domain/entities/weather_entity.dart';

class ApiService {
  final String _baseUrl =
      'https://weatherprediction-production-2120.up.railway.app/api/Weather?';
  Dio _dio;

  ApiService(this._dio);
  Future<Either<Failure, WeatherEntity>> get({
    required double latitude,
    required double longitude,
    required DateTime date,
    bool higherAccuracy = false,
  }) async {
    var response = await _dio.get(_baseUrl,
     queryParameters: {
          'lat': latitude,
          'lon': longitude,
          'date': date,
          'HigherAccuracy': higherAccuracy.toString(),
        },);
    return response.data;
  }
}
