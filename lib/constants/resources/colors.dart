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

  static const light = AppColors(
    mainText: Color(0xFF263238),
    subTextDark: Color(0xFF688690),
    subTextLight: Color(0xFFB5C3C9),
    border: Color(0xFFA7C0CC),
    disable: Color(0xFFE7E9EB),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
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
