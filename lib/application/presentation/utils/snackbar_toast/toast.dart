import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/colors.dart';

void showCustomToast({
  required String message,
  Toast toastLength = Toast.LENGTH_SHORT,
  ToastGravity gravity = ToastGravity.SNACKBAR,
  int timeInSecForIosWeb = 3,
  double fontSize = 12.0,
  Color backgroundColor = kblack,
  Color textColor = kwhite,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: toastLength,
    gravity: gravity,
    timeInSecForIosWeb: timeInSecForIosWeb,
    fontSize: fontSize,
    backgroundColor: backgroundColor,
    textColor: textColor,
  );
}

void showSnack(
    {required BuildContext context,
    required String message,
    Color textColor = kblack,
    Color? color,
    int time = 1600}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.horizontal,
      content: Text(
        message,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: textColor,
            ),
      ),
      duration: Duration(milliseconds: time),
      backgroundColor: color,
    ),
  );
}
