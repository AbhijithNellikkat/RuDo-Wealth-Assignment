import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/sign_in.dart';
import 'package:rudo_wealth_test/application/presentation/screens/dashboard/dashboard_screen.dart';
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

  void checkAuthStatus() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const ScreenDashboard()));
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const ScreenSignIn()));
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
