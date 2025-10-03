class Temperature {
	double? maxTemp;
	double? avgTemp;
	double? minTemp;
	String? description;
	int? hotTempPercent;
	int? coldTempPercent;

	Temperature({
		this.maxTemp, 
		this.avgTemp, 
		this.minTemp, 
		this.description, 
		this.hotTempPercent, 
		this.coldTempPercent, 
	});

	factory Temperature.fromJson(Map<String, dynamic> json) => Temperature(
				maxTemp: (json['maxTemp'] as num?)?.toDouble(),
				avgTemp: (json['avgTemp'] as num?)?.toDouble(),
				minTemp: (json['minTemp'] as num?)?.toDouble(),
				description: json['description'] as String?,
				hotTempPercent: json['hotTempPercent'] as int?,
				coldTempPercent: json['coldTempPercent'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'maxTemp': maxTemp,
				'avgTemp': avgTemp,
				'minTemp': minTemp,
				'description': description,
				'hotTempPercent': hotTempPercent,
				'coldTempPercent': coldTempPercent,
			};
}
