import 'package:flutter/material.dart';
import 'package:internwork/features/onboarding/domain/entities/onboarding_info.dart';
import 'package:internwork/features/onboarding/presentation/widgets/onboarding_page.dart';

class OnboardingView extends StatelessWidget {
  final List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
      title: 'Welcome to My Work',
      description:
          "Discover a new way to manage your tasks efficiently and effortlessly.",
      imagePath: 'assets/images/onboarding1.png',
      backgroundColor: Colors.lightBlueAccent,
    ),
    OnboardingInfo(
      title: "Stay Organized",
      description:
          "Easily organize your tasks with customizable categories and intuitive controls.",
      imagePath: 'assets/images/onboarding2.png',
      backgroundColor: const Color.fromARGB(255, 152, 129, 209),
    ),
    OnboardingInfo(
      title: "Get Started Now",
      description:
          "Join us and take the first step towards seamless task management.",
      imagePath: 'assets/images/onboarding3.png',
      backgroundColor: const Color.fromARGB(255, 211, 165, 162),
    ),
  ];

  OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: onboardingPages
                .map((pageInfo) => OnboardingPage(info: pageInfo))
                .toList(),
          ),
          Positioned(
            top: 40,
            right: 10,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: const Text('Skip'),
            ),
          ),
        ],
      ),
    );
  }
}
