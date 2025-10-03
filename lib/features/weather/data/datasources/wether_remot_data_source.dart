import 'package:hive_flutter/adapters.dart';
import 'package:weather_project/constants.dart';
import 'package:weather_project/core/utils/api_service.dart';
import 'package:weather_project/features/weather/data/models/weather_model/weather_model.dart';
import 'package:weather_project/features/weather/domain/entities/weather_entity.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherEntity> getWeatherData({
    required double latitude,
    required double longitude,
    required DateTime date,
    bool higherAccuracy = false,
  });
}

class WeatherRemoteDataSourceImple extends WeatherRemoteDataSource {
  final ApiService apiService;

  WeatherRemoteDataSourceImple({required this.apiService});

  @override
  Future<WeatherEntity> getWeatherData({
    required double latitude,
    required double longitude,
    required DateTime date,
    bool higherAccuracy = false,
  }) async {
    final data = await apiService.get(
      latitude: latitude,
      longitude: longitude,
      date: date,
      higherAccuracy: higherAccuracy,
    );

    
    final weatherData = WeatherModel.fromJson(data);
    
    
    await saveData(weatherData, latitude, longitude, date);
    
    return weatherData;
  }

  Future<void> saveData(WeatherEntity weatherData, double lat, double lon, DateTime date) async {
    var box = Hive.box<WeatherEntity>(kWeatherBox);

    final key = _generateKey(lat, lon, date);
    await box.put(key, weatherData); 
  }
}

String _generateKey(double lat, double lon, DateTime date) {
  final formattedDate = "${date.year}-${date.month}-${date.day}";
  return "$lat-$lon-$formattedDate";
}
