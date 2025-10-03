class Precipitation {
	double? avgPrecipitation;
	String? description;
	int? precipitationPercent;

	Precipitation({
		this.avgPrecipitation, 
		this.description, 
		this.precipitationPercent, 
	});

	factory Precipitation.fromJson(Map<String, dynamic> json) => Precipitation(
				avgPrecipitation: (json['avgPrecipitation'] as num?)?.toDouble(),
				description: json['description'] as String?,
				precipitationPercent: json['precipitationPercent'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'avgPrecipitation': avgPrecipitation,
				'description': description,
				'precipitationPercent': precipitationPercent,
			};
}
