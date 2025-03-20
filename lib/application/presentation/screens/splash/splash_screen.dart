import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/sign_in.dart';
import 'package:rudo_wealth_test/application/presentation/screens/onboarding/on.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/constants.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), checkAuthStatus);
  }

  Future<void> checkAuthStatus() async {
    try {
      final user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        // Always show Onboarding first, then navigate to Dashboard
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenOnboarding(),
          ),
        );
      } else {
        // If not logged in, go to Sign-In screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ScreenSignIn()),
        );
      }
    } catch (e) {
      debugPrint("Error in Splash Screen: $e");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ScreenSignIn()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInUp(
          animate: true,
          child: Image.asset(
            appLogo,
            height: 90,
          ),
        ),
      ),
    );
  }
}
