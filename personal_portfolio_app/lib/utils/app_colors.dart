import 'package:flutter/material.dart';

class AppColors {
  // Custom color palette
  static const Color customDarkBrown = Color(0xFF632324);
  static const Color customOrange = Color(0xFFE79839);
  static const Color customGrayLight = Color(0xFFD9D9D9);
  static const Color customBlack = Color(0xFF000000);
  static const Color customWhite = Color(0xFFFFFFFF);
  static const Color customAmber = Color(0xFFF8E0BB);
  static const Color customBrownDark = Color(0xFF923B27);
  static const Color customYellow = Color(0xFFFDBA52);

  // Prevent instantiation
  AppColors._();
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.customDarkBrown,
        primary: AppColors.customDarkBrown,
        secondary: AppColors.customAmber,
        surface: AppColors.customWhite,
        background: AppColors.customAmber,
      ),
      scaffoldBackgroundColor: AppColors.customAmber,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Abhaya Libre',
          fontWeight: FontWeight.bold,
          color: AppColors.customDarkBrown,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Abhaya Libre',
          fontWeight: FontWeight.w600,
          color: AppColors.customDarkBrown,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Abhaya Libre',
          fontWeight: FontWeight.normal,
          color: AppColors.customDarkBrown,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Abhaya Libre',
          fontWeight: FontWeight.w500,
          color: AppColors.customDarkBrown,
        ),
      ),
    );
  }

  // Prevent instantiation
  AppTheme._();
}
