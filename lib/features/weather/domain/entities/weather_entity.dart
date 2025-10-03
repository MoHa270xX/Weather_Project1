import 'package:weather_project/features/weather/data/models/weather_model/humidity.dart';
import 'package:weather_project/features/weather/data/models/weather_model/precipitation.dart';
import 'package:weather_project/features/weather/data/models/weather_model/snow_depth.dart';
import 'package:weather_project/features/weather/data/models/weather_model/snow_precipitation.dart';
import 'package:weather_project/features/weather/data/models/weather_model/temperature.dart';
import 'package:weather_project/features/weather/data/models/weather_model/wind_speed.dart';

class WeatherEntity {
final Temperature? temperature;
final	Humidity? humidity;
final	Precipitation? precipitation;
final	SnowPrecipitation? snowPrecipitation;
final	WindSpeed? windSpeed;
final	SnowDepth? snowDepth;

  WeatherEntity({required this.temperature, required this.humidity, required this.precipitation, required this.snowPrecipitation, required this.windSpeed, required this.snowDepth});
}
