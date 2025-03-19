import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rudo_wealth_test/application/bussiness_logic/bloc/auth_bloc.dart';
import 'package:rudo_wealth_test/application/presentation/routes/routes.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/colors.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/constants.dart';

import '../../utils/dialogs/dialogs.dart';

class ScreenDashboard extends StatelessWidget {
  const ScreenDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.logOutSuccess != null && state.logOutSuccess!) {
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.signInPage, (route) => false);
              }
            },
            child: IconButton(
                onPressed: () {
                  logoutDialog(context);
                },
                icon: const Icon(
                  Iconsax.logout,
                  color: kwhite,
                )),
          ),
          kWidth20,
        ],
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text('asdadff'),
      ),
    );
  }
}
