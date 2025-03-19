import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/routes/routes.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/widgets/google_and_phone.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/colors.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/constants.dart';
import 'package:rudo_wealth_test/application/presentation/widgets/custom_event_button.dart';
import 'package:rudo_wealth_test/application/presentation/widgets/custom_textform_field.dart';

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: sHeight * 0.10),
                kHeight20,
                Text(
                  'Create your account',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontSize: 23),
                ),
                kHeight10,
                Text(
                  'Join us today and unlock a world of financial opportunities. Sign up now to get started on your journey!',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontSize: 14, color: kgrey),
                ),
                kHeight50,
                CustomTextFormField(
                  labelText: '',
                  showUnderline: false,
                  controller: TextEditingController(),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Enter your email',
                  validate: Validate.email,
                ),
                kHeight10,
                CustomTextFormField(
                  controller: TextEditingController(),
                  labelText: 'password',
                  hintText: 'Enter your password',
                ),
                kHeight20,
                CustomEventButton(
                  color: const LinearGradient(colors: [kprimary, kprimary]),
                  width: double.infinity,
                  onTap: () {},
                  text: 'Sign-Up',
                  textColr: kblack,
                ),
                kHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Divider(
                    //   color: kgrey.withOpacity(0.4),
                    // ),
                    Center(
                      child: Text(
                        'Or Sign Up with',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(fontSize: 14),
                      ),
                    ),
                    // Divider(
                    //   color: kgrey.withOpacity(0.4),
                    // ),
                  ],
                ),
                kHeight30,
                const GoogleAndPhone(),
                kHeight50,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontSize: 14),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, Routes.signInPage);
                      },
                      child: Text(
                        ' Login',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: kprimary, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
