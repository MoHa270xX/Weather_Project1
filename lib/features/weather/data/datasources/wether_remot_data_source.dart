import 'package:hive_flutter/adapters.dart';
import 'package:weather_project/constants.dart';
import 'package:weather_project/core/utils/api_service.dart';
import 'package:weather_project/features/weather/data/models/weather_model/weather_model.dart';
import 'package:weather_project/features/weather/domain/entities/weather_entity.dart';

abstract class WetherRemotDataSource {
  Future<WeatherEntity> getWeatherData({
    required double latitude,
    required double longitude,
    required DateTime date,
    higherAccuracy = false,
  });
}

class WeatherRemoteDataSourceImple extends WetherRemotDataSource {
  final ApiService apiService;

  WeatherRemoteDataSourceImple({required this.apiService});
  @override
  Future<WeatherEntity> getWeatherData({
    required double latitude,
    required double longitude,
    required DateTime date,
    higherAccuracy = false,
  }) async {
    var data = await apiService.get(
      latitude: latitude,
      longitude: longitude,
      date: date,
      higherAccuracy: false,
    );
    var weatherData = WeatherModel.fromJson(data);
    return weatherData;
  }

  void saveData(WeatherEntity WeatherData) {
    var box = Hive.box<WeatherEntity>(kWeatherBox);
    box.add(WeatherData);
  }
}
