class Humidity {
	double? avgHumidity;
	String? description;
	double? highHumidityPercent;

	Humidity({this.avgHumidity, this.description, this.highHumidityPercent});

	factory Humidity.fromJson(Map<String, dynamic> json) => Humidity(
				avgHumidity: (json['avgHumidity'] as num?)?.toDouble(),
				description: json['description'] as String?,
				highHumidityPercent: (json['highHumidityPercent'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toJson() => {
				'avgHumidity': avgHumidity,
				'description': description,
				'highHumidityPercent': highHumidityPercent,
			};
}
