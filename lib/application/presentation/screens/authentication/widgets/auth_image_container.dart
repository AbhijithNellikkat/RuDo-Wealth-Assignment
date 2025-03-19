import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/constants.dart';

class AuthImageContainer extends StatelessWidget {
  const AuthImageContainer({super.key, required this.img, required this.ontap});
  final String img;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: () => ontap(),
      child: Container(
        height: sWidth * 0.10,
        width: double.infinity,
        child: Row(
          children: [Image.asset(google)],
        ),
      ),
    );
  }
}
