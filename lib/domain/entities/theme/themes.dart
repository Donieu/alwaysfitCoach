import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  final ThemeData defaultTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
  selectedLabelStyle: TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight: FontWeight.w600,
  ),
  unselectedLabelStyle: TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
  selectedItemColor: AppColors.primary,
  unselectedItemColor: Colors.grey,
),

    primarySwatch: Colors.blue,
    primaryColor: AppColors.appBar,
    cardColor: Color(0xffF6F6FA),
    useMaterial3: false,
    iconTheme: IconThemeData(color: Colors.grey[900]),
     scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xffF7F7F7),
    ),
    colorScheme: ColorScheme(
      outlineVariant: AppColors.buttonColor,
      primary: AppColors.primary,
      onPrimary: AppColors.contrast,
      secondary: AppColors.secondary,
      onSecondary: AppColors.primarySwatch,
      error: AppColors.error,
      onError: AppColors.contrast,
      surface: AppColors.contrast,
      onSurface: AppColors.contrast,
      shadow: AppColors.darkGrey,
      brightness: Brightness.light,
    ),
    fontFamily: 'Montserrat',
    textTheme: _lightTextTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );

  final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme(
      outlineVariant: AppColors.contrast,
      primary: AppColors.primary,
      onPrimary: AppColors.contrast,
      secondary: AppColors.secondary,
      onSecondary: AppColors.contrast,
      error: AppColors.error,
      onError: AppColors.contrast,
      surface: AppColors.mediumGrey!,
      onSurface: AppColors.accentLightGray,
      shadow: AppColors.darkGrey,
      brightness: Brightness.dark,
    ),
    fontFamily: 'Montserrat',
    textTheme: _darkTextTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}

final TextTheme _lightTextTheme = TextTheme(
  displayLarge: const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w900,
    color: AppColors.primary,
  ),
  displayMedium: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  ),
  titleMedium: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
  ),
  displaySmall: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.appBar,
  ),
  headlineLarge: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.text,
  ),
  headlineMedium:  TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  ),
  bodyMedium: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.accentLightGray,
  ),
  labelLarge: TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  ),
  
  bodyLarge: TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w800,
    color: AppColors.text,
  ),
);

final TextTheme _darkTextTheme = TextTheme(
  displayLarge: const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w900,
    color: AppColors.primary,
  ),
  displayMedium: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  ),
  titleMedium: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.contrast,
  ),
  displaySmall: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.appBar,
  ),
  headlineLarge: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.accentLightGray,
  ),
  headlineMedium: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.appBar,
  ),
  bodyMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  ),
  labelLarge: const TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColors.contrast,
  ),
  bodyLarge: TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  ),
);
