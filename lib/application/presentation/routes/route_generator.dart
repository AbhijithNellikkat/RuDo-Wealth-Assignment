import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/routes/routes.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/sign_in.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/sign_up.dart';
import 'package:rudo_wealth_test/application/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:rudo_wealth_test/application/presentation/screens/splash/splash_screen.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    //final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
          builder: (ctx) => const ScreenSplash(),
        );
      case Routes.signUpPage:
        return MaterialPageRoute(
          builder: (context) => const ScreenSignUp(),
        );
      case Routes.signInPage:
        return MaterialPageRoute(
          builder: (context) => const ScreenSignIn(),
        );

      case Routes.dashboardPage:
        return MaterialPageRoute(
          builder: (context) => const ScreenDashboard(),
        );

      default:
        return _errorScreen();
    }
  }

  static Route<dynamic> _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(
            child: Text(
          'Error while navigating',
        )),
      );
    });
  }
}
