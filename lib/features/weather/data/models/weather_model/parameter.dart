class Parameter {
	double? t2M;
	double? t2MMax;
	double? t2MMin;
	double? prectotcorr;
	double? rH2M;
	double? wS2M;
	int? precsno;
	int? snodp;
	String? date;

	Parameter({
		this.t2M, 
		this.t2MMax, 
		this.t2MMin, 
		this.prectotcorr, 
		this.rH2M, 
		this.wS2M, 
		this.precsno, 
		this.snodp, 
		this.date, 
	});

	factory Parameter.fromJson(Map<String, dynamic> json) => Parameter(
				t2M: (json['t2M'] as num?)?.toDouble(),
				t2MMax: (json['t2M_MAX'] as num?)?.toDouble(),
				t2MMin: (json['t2M_MIN'] as num?)?.toDouble(),
				prectotcorr: (json['prectotcorr'] as num?)?.toDouble(),
				rH2M: (json['rH2M'] as num?)?.toDouble(),
				wS2M: (json['wS2M'] as num?)?.toDouble(),
				precsno: json['precsno'] as int?,
				snodp: json['snodp'] as int?,
				date: json['date'] as String?,
			);

	Map<String, dynamic> toJson() => {
				't2M': t2M,
				't2M_MAX': t2MMax,
				't2M_MIN': t2MMin,
				'prectotcorr': prectotcorr,
				'rH2M': rH2M,
				'wS2M': wS2M,
				'precsno': precsno,
				'snodp': snodp,
				'date': date,
			};
}
