import 'package:cusafe/Screens/Onboarding/loginPage.dart';
import 'package:cusafe/Widgets/onboardingPageWidget.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => LiquidSwipe(
        enableLoop: false,
        enableSlideIcon: true,
        pages: [
          OnboardingPageWidget(
            title: 'Contactless ID',
            image: 'assets/images/RedImage.png',
            content:
                'Inside campus ID Card is most\nnecessary object to carry, but\nshowing this ID Card to someone\nneeds you to get in close contact.\n\nBut here is the rescue, your e-ID will\nbe visible to any authority person\nin the range of 2 meters.',
          ),
          OnboardingPageWidget(
            title: 'Close Contact Alert',
            image: 'assets/images/YellowImage.png',
            content:
                'Inside campus ID Card is most\nnecessary object to carry, but\nshowing this ID Card to someone\nneeds you to get in close contact.\n\nBut here is the rescue, your e-ID will\nbe visible to any authority person\nin the range of 2 meters.',
          ),
          OnboardingPageWidget(
            title: 'Health Monitoring',
            image: 'assets/images/BlueImage.png',
            content:
                'Inside campus ID Card is most\nnecessary object to carry, but\nshowing this ID Card to someone\nneeds you to get in close contact.\n\nBut here is the rescue, your e-ID will\nbe visible to any authority person\nin the range of 2 meters.',
          ),
          LoginPage(),
        ],
      ),
    );
  }
}
