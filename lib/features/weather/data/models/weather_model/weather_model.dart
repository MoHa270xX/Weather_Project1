import 'package:weather_project/features/weather/domain/entities/weather_entity.dart';

import 'humidity.dart';
import 'parameter.dart';
import 'precipitation.dart';
import 'snow_depth.dart';
import 'snow_precipitation.dart';
import 'temperature.dart';
import 'wind_speed.dart';

class WeatherModel extends WeatherEntity {
	Temperature? temperature;
	Humidity? humidity;
	Precipitation? precipitation;
	SnowPrecipitation? snowPrecipitation;
	WindSpeed? windSpeed;
	SnowDepth? snowDepth;
	List<Parameter>? parameters;

	WeatherModel({
		this.temperature, 
		this.humidity, 
		this.precipitation, 
		this.snowPrecipitation, 
		this.windSpeed, 
		this.snowDepth, 
		this.parameters, 
	}) : super(temperature:temperature , humidity: humidity, precipitation: precipitation, snowPrecipitation: snowPrecipitation, windSpeed: windSpeed, snowDepth: snowDepth);

	factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
				temperature: json['temperature'] == null
						? null
						: Temperature.fromJson(json['temperature'] as Map<String, dynamic>),
				humidity: json['humidity'] == null
						? null
						: Humidity.fromJson(json['humidity'] as Map<String, dynamic>),
				precipitation: json['precipitation'] == null
						? null
						: Precipitation.fromJson(json['precipitation'] as Map<String, dynamic>),
				snowPrecipitation: json['snowPrecipitation'] == null
						? null
						: SnowPrecipitation.fromJson(json['snowPrecipitation'] as Map<String, dynamic>),
				windSpeed: json['windSpeed'] == null
						? null
						: WindSpeed.fromJson(json['windSpeed'] as Map<String, dynamic>),
				snowDepth: json['snowDepth'] == null
						? null
						: SnowDepth.fromJson(json['snowDepth'] as Map<String, dynamic>),
				parameters: (json['parameters'] as List<dynamic>?)
						?.map((e) => Parameter.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'temperature': temperature?.toJson(),
				'humidity': humidity?.toJson(),
				'precipitation': precipitation?.toJson(),
				'snowPrecipitation': snowPrecipitation?.toJson(),
				'windSpeed': windSpeed?.toJson(),
				'snowDepth': snowDepth?.toJson(),
				'parameters': parameters?.map((e) => e.toJson()).toList(),
			};
}
