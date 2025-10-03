import 'package:hive_flutter/adapters.dart';
import 'package:weather_project/features/weather/data/models/weather_model/humidity.dart';
import 'package:weather_project/features/weather/data/models/weather_model/precipitation.dart';
import 'package:weather_project/features/weather/data/models/weather_model/snow_depth.dart';
import 'package:weather_project/features/weather/data/models/weather_model/snow_precipitation.dart';
import 'package:weather_project/features/weather/data/models/weather_model/temperature.dart';
import 'package:weather_project/features/weather/data/models/weather_model/wind_speed.dart';
part 'weather_entity.g.dart';

@HiveType(typeId: 0)
class WeatherEntity {
   @HiveField(0)
final Temperature? temperature;
 @HiveField(1)
final	Humidity? humidity;
 @HiveField(2)
final	Precipitation? precipitation;
 @HiveField(3)
final	SnowPrecipitation? snowPrecipitation;
 @HiveField(4)
final	WindSpeed? windSpeed;
 @HiveField(5)
final	SnowDepth? snowDepth;

  WeatherEntity({required this.temperature, required this.humidity, required this.precipitation, required this.snowPrecipitation, required this.windSpeed, required this.snowDepth});
}
