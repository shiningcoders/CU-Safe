import 'package:cusafe/Screens/Onboarding/baseOnboarding.dart';
import 'package:flutter/material.dart';

void main() => runApp(CUSafe());

class CUSafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CU Safe',
      home: OnboardingScreen(),
    );
  }
}
