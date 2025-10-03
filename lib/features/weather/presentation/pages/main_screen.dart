import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/pages/Map_screen.dart';
import 'package:weather_project/features/weather/presentation/pages/dashboard_screen.dart';
import 'package:weather_project/features/weather/presentation/pages/export_data.dart';
import 'package:weather_project/features/weather/presentation/pages/settings_screen.dart';
import 'package:weather_project/features/weather/presentation/widgets/custom_nav_bar.dart';
import 'package:weather_project/features/weather/presentation/widgets/location_screen_body.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedNavIndex = 0;
   
  final List<Widget> _screens = const [
    
    LocationTimeScreenBody(),
    MapScreen(mode: MapMode.dropPin),
    WeatherProbabilitiesScreen(),
    ExportDataScreen(),
    SettingScreen(),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedNavIndex,
        children: _screens,
      ),
      bottomNavigationBar: CustomBottomNavBar(currentIndex:_selectedNavIndex , onTap: _onNavItemTapped)
    );
  }
}
