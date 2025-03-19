import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rudo_wealth_test/application/bussiness_logic/bloc/auth_bloc.dart';
import 'package:rudo_wealth_test/application/presentation/screens/authentication/widgets/auth_image_container.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/constants.dart';

class GoogleAndPhone extends StatelessWidget {
  const GoogleAndPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthImageContainer(
            img: google,
            ontap: () async {
              FocusScope.of(context).unfocus();
              context.read<AuthBloc>().add(const AuthEvent.googleSignIn());
            }),
        kWidth50,
        AuthImageContainer(
            img: phone,
            ontap: () {
              FocusScope.of(context).unfocus();
              // Navigator.pushNamed(context, Routes.otpPage);
            })
      ],
    );
  }
}
