import 'package:shared_preferences/shared_preferences.dart';

enum AppPreferenceKeys {
  isDarkTheme,
}

class AppSharedPreferences {
  static SharedPreferences? _sharedPreferences;

  static Future<SharedPreferences> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences!;
  }

  static Future<void> saveIsDarkTheme(bool isDark) async =>
      _sharedPreferences!.setBool(
        AppPreferenceKeys.isDarkTheme.name,
        isDark,
      );

  static bool? getIsDarkTheme() => _sharedPreferences!.getBool(
        AppPreferenceKeys.isDarkTheme.name,
      );
}
