import 'package:internwork/features/login/presentation/views/login.dart';
import 'package:internwork/features/onboarding/presentation/views/onboarding_views.dart';
import 'package:internwork/features/splash/presentation/views/splash_view.dart';

class AppRoute {
  AppRoute._();

  static const String splashRoute = '/';
  static const String onboardingRoute = '/onboarding';
  static const String loginRoute = '/login';

  static getApplicationRoute() {
    return {
      splashRoute: (context) => const SplashView(),
      onboardingRoute: (context) => OnboardingView(),
      loginRoute: (context) => const LoginView(),
    };
  }
}
