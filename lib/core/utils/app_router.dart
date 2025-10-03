import 'package:go_router/go_router.dart';
import 'package:weather_project/features/weather/presentation/pages/dashboard_screen.dart';
import 'package:weather_project/features/weather/presentation/pages/export_data.dart';
import 'package:weather_project/features/weather/presentation/pages/location_time_screen.dart';
import 'package:weather_project/features/weather/presentation/pages/settings_screen.dart';
import 'package:weather_project/features/weather/presentation/pages/welcome_screen.dart';
import 'package:weather_project/features/weather/presentation/pages/main_screen.dart'; // مهم تضيف MainScreen

abstract class AppRouter {
  static final kMain = '/main';
  static final kLocationView = '/location_view';
  static final kDashboard = '/dashboard_view';
  static final kExportView = '/export_view';
  static final kSettingView = '/setting_view';

  static final router = GoRouter(
    initialLocation: '/', 
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: kMain,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: kLocationView,
        builder: (context, state) => const LocationTimeScreen(),
      ),
      GoRoute(
        path: kDashboard,
        builder: (context, state) => const WeatherProbabilitiesScreen(),
      ),
      GoRoute(
        path: kExportView,
        builder: (context, state) => const ExportDataScreen(),
      ),
      GoRoute(
        path: kSettingView,
        builder: (context, state) => const SettingScreen(),
      ),
    ],
  );
}
