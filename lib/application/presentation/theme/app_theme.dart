import 'package:flutter/material.dart';

import 'package:rudo_wealth_test/application/presentation/utils/constants/colors.dart';

class AppThemes {
  // Dark Theme Configuration
  static ThemeData darkTheme() {
    return ThemeData(
      // fontFamily: fontPoppins,
      scaffoldBackgroundColor: kblack,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: kprimary,
        onPrimary: kblack,
        error: kred,
        onTertiary: kwhite,
        secondary: kgrey,
      ),
      cardColor: kwhite,
      textTheme: const TextTheme(
          headlineLarge: TextStyle(
              color: kblack, fontSize: 32, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(
              color: kwhite, fontSize: 14, fontWeight: FontWeight.bold),
          bodySmall: TextStyle(color: kwhite, fontSize: 12),
          displaySmall: TextStyle(color: kwhite, fontSize: 12),
          displayMedium: TextStyle(
              fontWeight: FontWeight.bold, color: kwhite, fontSize: 14),
          titleLarge: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: kblack),
          titleMedium: TextStyle(
              fontSize: 15, color: kblack, fontWeight: FontWeight.bold),
          titleSmall: TextStyle(fontSize: 13, color: kblack)),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: kblack,
        refreshBackgroundColor: kblack,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: knill,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: kgrey, width: 1.0),
        ),
      ),
      cardTheme: const CardTheme(
        color: kwhite,
        shadowColor: kgrey,
        elevation: 0,
      ),
      navigationBarTheme: const NavigationBarThemeData(backgroundColor: kwhite),
      appBarTheme: const AppBarTheme(
          backgroundColor: kblack,
          foregroundColor: kblack,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 17,
            color: kblack,
            fontWeight: FontWeight.w500,
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: kprimary,
            foregroundColor: kwhite,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
      ),
      popupMenuTheme: const PopupMenuThemeData(color: kwhite),
    );
  }

  // Light Theme Configuration
  static ThemeData lightTheme() {
    return ThemeData();
  }
}
