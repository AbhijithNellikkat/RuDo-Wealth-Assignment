import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/routes/routes.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/sign_in.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/sign_up.dart';
import 'package:rudo_wealth_test/application/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:rudo_wealth_test/application/presentation/screens/onboarding/on.dart';
import 'package:rudo_wealth_test/application/presentation/screens/splash/splash_screen.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    Widget screen;
    switch (settings.name) {
      case Routes.initial:
        screen = const ScreenSplash();
        break;
      case Routes.signUpPage:
        screen = const ScreenSignUp();
        break;
      case Routes.signInPage:
        screen = const ScreenSignIn();
        break;
      case Routes.dashboardPage:
        screen = const ScreenDashboard();
        break;
      case Routes.onboarding:
        screen = const ScreenOnboarding();
        break;
      default:
        return _errorScreen();
    }

    return _fadeRoute(screen);
  }

  static Route _fadeRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 500),
    );
  }

  static Route<dynamic> _errorScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('Error while navigating')),
        );
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}
