import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:weather_project/constants.dart';
import 'package:weather_project/core/utils/app_router.dart';
import 'package:weather_project/features/weather/domain/entities/weather_entity.dart';

void main() async{
    await Hive.initFlutter();
  Hive.registerAdapter(WeatherEntityAdapter());
  await Hive.openBox<WeatherEntity>(kWeatherBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
