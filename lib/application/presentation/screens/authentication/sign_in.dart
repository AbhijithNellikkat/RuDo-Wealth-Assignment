import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/widgets/signin_form_body.dart';

final signInKey = GlobalKey<FormState>();

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Form(
            key: signInKey,
            child: const SignInFormBody(),
          ),
        ),
      ),
    );
  }
}
