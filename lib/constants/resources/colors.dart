import 'package:flutter/material.dart';

class AppColors {
  const AppColors({
    required this.mainText,
    required this.subTextDark,
    required this.subTextLight,
    required this.border,
    required this.disable,
    required this.white,
    required this.black,
    required this.lightBlack,
    required this.mediumBlack,
    required this.lightBlue,
    required this.mediumBlue,
  });

  /// Main Text
  final Color mainText;

  /// Sub Text Dark
  final Color subTextDark;

  /// Sub Text Light
  final Color subTextLight;

  /// Border
  final Color border;

  /// Disable
  final Color disable;

  /// White
  final Color white;

  /// Black
  final Color black;

  /// Light Black
  final Color lightBlack;

  /// Medium Black
  final Color mediumBlack;

  /// Light Blue
  final Color lightBlue;

  /// Medium Blue
  final Color mediumBlue;

  static const light = AppColors(
    mainText: Color(0xFF263238),
    subTextDark: Color(0xFF688690),
    subTextLight: Color(0xFFB5C3C9),
    border: Color(0xFFA7C0CC),
    disable: Color(0xFFE7E9EB),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    lightBlack: Color(0x1F000000),
    mediumBlack: Color(0x73000000),
    lightBlue: Color(0x03A9F4FF),
    mediumBlue: Color(0xFF1976D2),
  );
  static const dark = AppColors(
    mainText: Color(0xFFF1F5F1),
    subTextDark: Color(0xFF688690),
    subTextLight: Color(0xFFB5C3C9),
    border: Color(0xFFA7C0CC),
    disable: Color(0xFFE7E9EB),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    lightBlack: Color(0x1F000000),
    mediumBlack: Color(0x73000000),
    lightBlue: Color(0x03A9F4FF),
    mediumBlue: Color(0xFF1976D2),
  );
}

extension AppColorsExtension on BuildContext {
  AppColors get colors {
    return _colorsFromBrightness(Theme.of(this).brightness);
  }

  AppColors _colorsFromBrightness(Brightness brightness) {
    switch (brightness) {
      case Brightness.light:
        return AppColors.light;
      case Brightness.dark:
        return AppColors.light;
    }
  }
}
