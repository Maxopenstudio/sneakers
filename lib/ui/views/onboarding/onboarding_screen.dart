import 'package:flutter/material.dart';

import 'package:xam_shoes_app/ui/views/onboarding/components/onboarding_body.dart';
import 'package:xam_shoes_app/ui/views/onboarding/components/onboarding_get_started_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: OnboardingGetStartedButton(),
    );
  }
}
