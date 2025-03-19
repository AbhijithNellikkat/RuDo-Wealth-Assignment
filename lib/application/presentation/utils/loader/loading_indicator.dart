import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/colors.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/constants.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: sWidth * width,
        child: const LoadingIndicator(
          indicatorType: Indicator.ballPulse,
          pathBackgroundColor: kprimary,
          colors: [kprimary],
        ),
      ),
    );
  }
}
