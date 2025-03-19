import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/widgets/signup_form_body.dart';

final signupKey = GlobalKey<FormState>();

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Form(
            key: signupKey,
            child: const SignUpFormBody(),
          ),
        ),
      ),
    );
  }
}
