import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/containu_button.dart';
import 'package:weather_project/features/weather/presentation/widgets/how_it_works.dart';
import 'package:weather_project/features/weather/presentation/widgets/sign_in_button.dart';
import 'package:weather_project/features/weather/presentation/widgets/welcome_logo.dart';
import 'package:weather_project/features/weather/presentation/widgets/welcome_subtitle.dart';
import 'package:weather_project/features/weather/presentation/widgets/welcome_title.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            WelcomeLogo(),
            const SizedBox(height: 16),
            WelcomeTittle(),
            const SizedBox(height: 16),
            WelcomeSubtittle(),
            const Spacer(flex: 3),
            // Pass the context to the button builder
            ContinueButton(),
            const SizedBox(height: 16),
            SignInButton(),
            const SizedBox(height: 24),
            HowItWorksButton(),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
