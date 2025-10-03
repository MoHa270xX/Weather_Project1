import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:weather_project/core/utils/app_router.dart';
import 'package:weather_project/features/weather/presentation/widgets/containu_button.dart';
import 'package:weather_project/features/weather/presentation/widgets/custom_app_bar.dart';
import 'package:weather_project/features/weather/presentation/widgets/location_card.dart';

class LocationTimeScreenBody extends StatefulWidget {
  const LocationTimeScreenBody({super.key});

  @override
  State<LocationTimeScreenBody> createState() => _LocationTimeScreenState();
}

class _LocationTimeScreenState extends State<LocationTimeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B3E),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: 'Location & Time',
              onBack: () {
                GoRouter.of(context).pop();
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const LocationCard(),
                      const SizedBox(height: 24),
                      DateTimePickerWidget(),
                      ContinueButton(
                        text: "Continue to Weather Details",
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.kMain);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateTimePickerWidget extends StatefulWidget {
  const DateTimePickerWidget({super.key});

  @override
  State<DateTimePickerWidget> createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime _selectedDate = DateTime.now();

  final TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _dateController.text = DateFormat('MMM dd, yyyy').format(_selectedDate);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),

      builder: (context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.dark(
              primary: Color(0xFF172A4D),
              onPrimary: Colors.white,
              surface: Color(0xFF0A1C3E),
              onSurface: Colors.white,
            ),
            dialogBackgroundColor: const Color(0xFF172A4D),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('MMM dd, yyyy').format(_selectedDate);
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _dateController,
        readOnly: true,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: 'Date/Time',
          labelStyle: const TextStyle(color: Colors.white70),
          filled: true,
          fillColor: const Color(0xFF172A4D),
          suffixIcon: const Icon(Icons.calendar_today, color: Colors.white70),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.blueAccent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
        onTap: () {
          _selectDate(context);
        },
      ),
    );
  }
}
