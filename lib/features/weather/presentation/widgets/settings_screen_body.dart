import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/about_weather.dart';
import 'package:weather_project/features/weather/presentation/widgets/custom_app_bar.dart';
import 'package:weather_project/features/weather/presentation/widgets/data_sources_tabs.dart';
import 'package:weather_project/features/weather/presentation/widgets/tab_item_.dart';

class SettingsScreenBody extends StatefulWidget {
  const SettingsScreenBody({super.key});

  @override
  State<SettingsScreenBody> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreenBody> {
  int _selectedTabIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(title: "Settings"),
          SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF172A4D),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                TabItem(
                  index: 0,
                  title: 'Data Sources',
                  onTap: _onTap,
                  selectedIndex: _selectedTabIndex,
                ),
                TabItem(
                  index: 1,
                  title: 'About',
                  onTap: _onTap,
                  selectedIndex: _selectedTabIndex,
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                // Conditionally display the content based on the selected tab
                child: IndexedStack(
                  index: _selectedTabIndex,
                  children: [DataSourceTabs(), AboutTab()],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
