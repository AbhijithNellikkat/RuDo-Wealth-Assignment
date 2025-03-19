import 'package:animate_do/animate_do.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rudo_wealth_test/application/bussiness_logic/bloc/auth_bloc.dart';
import 'package:rudo_wealth_test/application/presentation/routes/routes.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/sign_in.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/colors.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/constants.dart';
import 'package:rudo_wealth_test/application/presentation/utils/loader/loading_indicator.dart';
import 'package:rudo_wealth_test/application/presentation/utils/snackbar_toast/toast.dart';
import 'package:rudo_wealth_test/application/presentation/widgets/custom_event_button.dart';
import 'package:rudo_wealth_test/application/presentation/widgets/custom_textform_field.dart';
import 'package:rudo_wealth_test/domain/models/auth/auth_model.dart';

import '../../../utils/animations/word_by_word_text_animation.dart';

class SignInFormBody extends StatelessWidget {
  const SignInFormBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.hasError ||
            (state.signInSuccess != null && state.signInSuccess!)) {
          showSnack(
              context: context,
              message: state.message!,
              color: state.hasError ? kred : kprimary);
        }
        if (state.signInSuccess != null && state.signInSuccess!) {
          Navigator.pushNamedAndRemoveUntil(
              context, Routes.dashboardPage, (route) => false);
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: sHeight * 0.10),
          kHeight20,
          Text(
            'Welcome Back!\nLog in to Continue',
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(fontSize: 23),
          ),
          kHeight10,
          WordByWordTextAnimation(
            textStyle: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontSize: 13, color: kgrey),
            textAlign: TextAlign.start,
            text:
                'Access your account and manage your finances effortlessly. Log in to stay on top of your journey!',
          ),
          kHeight50,
          CustomTextFormField(
            labelText: '',
            showUnderline: false,
            controller: context.read<AuthBloc>().emailSignInController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onTapOutside: () => FocusScope.of(context).unfocus(),
            hintText: 'Enter your email',
            validate: Validate.email,
          ),
          kHeight10,
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear,
                height: state.tapOnPassword ? null : 0,
                child: state.tapOnPassword
                    ? Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10, left: 10, right: 10),
                        child: FadeInDown(
                          from: 20,
                          animate: true,
                          child: Text(
                            maxLines: 6,
                            'Password must contain at least 8 characters, including lowercase & uppercase letters, numbers, and special characters',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(fontSize: 10),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              );
            },
          ),
          CustomTextFormField(
            validate: Validate.password,
            obscureText: true,
            onTap: () {
              context.read<AuthBloc>().add(const AuthEvent.togglePasswordTap());
            },
            labelText: 'password',
            onTapOutside: () {
              context.read<AuthBloc>().add(const AuthEvent.togglePasswordTap());
              FocusScope.of(context).unfocus();
            },
            controller: context.read<AuthBloc>().passwordSignInController,
            hintText: 'Enter your password',
          ),
          kHeight20,
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const LoadingAnimation(width: 0.20);
              } else {
                return CustomEventButton(
                  color: const LinearGradient(colors: [kprimary, kprimary]),
                  width: double.infinity,
                  onTap: () {
                    if (signInKey.currentState!.validate()) {
                      FocusScope.of(context).unfocus();
                      context.read<AuthBloc>().add(AuthEvent.signIn(
                          authModel: AuthModel(
                              email: context
                                  .read<AuthBloc>()
                                  .emailSignInController
                                  .text
                                  .trim(),
                              password: context
                                  .read<AuthBloc>()
                                  .passwordSignInController
                                  .text
                                  .trim())));
                    }
                  },
                  text: 'Sign-In',
                  textColr: kblack,
                );
              }
            },
          ),
          kHeight30,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Divider(
              //   color: kgrey.withOpacity(0.4),
              // ),
              Center(
                child: Text('Or Sign in with',
                    style: Theme.of(context).textTheme.displaySmall),
              ),
              // Divider(
              //   color: kgrey.withOpacity(0.4),
              // ),
            ],
          ),
          kHeight30,
          Center(
            child: GoogleAuthButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.googleSignIn());
              },
              style: AuthButtonStyle(
                textStyle: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontSize: 15),
                iconType: AuthIconType.secondary,
                buttonColor: kblack,
              ),
            ),
          ),
          kHeight50,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontSize: 14),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.signUpPage);
                },
                child: Text(
                  ' Sing-Up',
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
    );
  }
}
