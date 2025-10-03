class SnowDepth {
	int? avgSnowDepth;
	String? description;
	int? snowDepthPercent;

	SnowDepth({this.avgSnowDepth, this.description, this.snowDepthPercent});

	factory SnowDepth.fromJson(Map<String, dynamic> json) => SnowDepth(
				avgSnowDepth: json['avgSnowDepth'] as int?,
				description: json['description'] as String?,
				snowDepthPercent: json['snowDepthPercent'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'avgSnowDepth': avgSnowDepth,
				'description': description,
				'snowDepthPercent': snowDepthPercent,
			};
}
