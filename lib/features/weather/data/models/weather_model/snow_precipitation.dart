class SnowPrecipitation {
	int? avgSnowPrecipitation;
	String? description;
	int? snowPrecipitationPercent;

	SnowPrecipitation({
		this.avgSnowPrecipitation, 
		this.description, 
		this.snowPrecipitationPercent, 
	});

	factory SnowPrecipitation.fromJson(Map<String, dynamic> json) {
		return SnowPrecipitation(
			avgSnowPrecipitation: json['avgSnowPrecipitation'] as int?,
			description: json['description'] as String?,
			snowPrecipitationPercent: json['snowPrecipitationPercent'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'avgSnowPrecipitation': avgSnowPrecipitation,
				'description': description,
				'snowPrecipitationPercent': snowPrecipitationPercent,
			};
}
