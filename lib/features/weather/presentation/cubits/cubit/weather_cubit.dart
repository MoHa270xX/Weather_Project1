import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_project/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_project/features/weather/domain/usecases/weather_use_case.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherUseCase weatherUseCase;

  WeatherCubit(this.weatherUseCase):super(WeatherInitial());
  Future<void> fetchWeatherData(latitude, longitude, date,higherAccuracy) async {
    emit(WeatherLoading());
    var resulte = await weatherUseCase.call(
     
    WeatherParams(higherAccuracy:false, latitude: latitude, longitude: longitude, date: date)
    );
    resulte.fold(
      (Failure) {
        emit(WeatherFailur(Failure.errMessage));
      },
      (weatherData) {
        emit(WeatherSuccess(weatherData));
      },
    );
  }
}
