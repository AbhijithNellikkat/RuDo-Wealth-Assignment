import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/routes/routes.dart';
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
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.signUpPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          appLogo,
          height: 90,
        ),
      ),
    );
  }
}
