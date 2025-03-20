import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/colors.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/constants.dart';
import 'package:rudo_wealth_test/application/presentation/widgets/custom_event_button.dart';
import '../../../bussiness_logic/auth/auth_bloc.dart';

Future<dynamic> logoutDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Logout Confirmation",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: kblack, fontSize: 15),
            ),
          ],
        ),
        content: Text(
          "Are you sure you want to logout? You will need to sign in again to access your account.",
          style:
              Theme.of(context).textTheme.displaySmall?.copyWith(color: kblack),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomEventButton(
                  outlineBorder: true,
                  textColr: kprimary,
                  outlineBorderClr: kprimary,
                  textStyle: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: kprimary),
                  text: 'Cancel',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              kWidth5,
              Expanded(
                child: CustomEventButton(
                  textStyle: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: kblack),
                  text: 'Logout',
                  onTap: () {
                    Navigator.pop(context); // Close dialog first
                    context.read<AuthBloc>().add(const AuthEvent.signOut());
                  },
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
