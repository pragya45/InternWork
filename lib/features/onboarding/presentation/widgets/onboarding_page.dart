import 'package:flutter/material.dart';
import 'package:internwork/features/onboarding/domain/entities/onboarding_info.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingInfo info;

  const OnboardingPage({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: info.backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (info.imagePath.isNotEmpty) Image.asset(info.imagePath),
            const SizedBox(height: 15),
            Text(
              info.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 14),
            Text(
              info.description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
