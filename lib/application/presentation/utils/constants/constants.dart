import 'package:flutter/material.dart';

const String appLogo = 'assets/images/rudo_wealth_logo.png';
const String phone = 'assets/images/mobile.png';
const String google = 'assets/images/google.png';

const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight50 = SizedBox(height: 50);

const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kWidth50 = SizedBox(width: 50);

const kRadius5 = Radius.circular(5);
const kRadius10 = Radius.circular(10);
const kRadius20 = Radius.circular(20);
const kRadius50 = Radius.circular(50);

double sHeight = 850;
double sWidth = 350;

const String errorMessage = 'Oops! Something went wrong. Please try again.';

BoxShadow boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  blurRadius: 5.0,
  offset: const Offset(3.0, 3.0),
  spreadRadius: -2.0,
);

enum Validate {
  phone,
  email,
  password,
  none,
  rePassword,
  notNull,
  ifValidnumber,
  ifValidWebsite,
  ifValidEmail,
}
