class WindSpeed {
	double? avgWindSpeed;
	String? description;
	int? highWindSpeedPercent;

	WindSpeed({
		this.avgWindSpeed, 
		this.description, 
		this.highWindSpeedPercent, 
	});

	factory WindSpeed.fromJson(Map<String, dynamic> json) => WindSpeed(
				avgWindSpeed: (json['avgWindSpeed'] as num?)?.toDouble(),
				description: json['description'] as String?,
				highWindSpeedPercent: json['highWindSpeedPercent'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'avgWindSpeed': avgWindSpeed,
				'description': description,
				'highWindSpeedPercent': highWindSpeedPercent,
			};
}
