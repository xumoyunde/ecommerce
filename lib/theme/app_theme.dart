import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xffeaf4f4);
  static Color lightPrimaryColor = const Color(0xffe7e7e8);
  static Color lightSecondaryColor = const Color(0xffcce3de);
  static Color lightAccentColor = Color(0xfff4f4f4);
  static Color lightParticlesColor = const Color(0xff757575);
  static Color lightTextColor = Colors.black54;
  static Color dark = Colors.black;

  const AppTheme._();

  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: AppTheme.lightPrimaryColor,
      backgroundColor: lightBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(backgroundColor: lightPrimaryColor),
      colorScheme: ColorScheme.light(secondary: lightSecondaryColor),
      textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 18,
          color: lightTextColor,
        ),
        titleLarge: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: dark,
        )
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: lightBackgroundColor),
      )
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance!.window.platformBrightness;

  static setStatusBarAndNavigationBarColors(Theme themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: lightBackgroundColor,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}