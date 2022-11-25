import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_shared_preference.dart';

final appThemeNotifierProvider =
    StateNotifierProvider.autoDispose<AppThemeStateNotifier, bool>((ref) {
  return AppThemeStateNotifier();
});

class AppThemeStateNotifier extends StateNotifier<bool> {
  AppThemeStateNotifier() : super(false) {
    // set initially set value
    Future.delayed(Duration.zero, () async {
      state = AppSharedPreferences.getIsDarkTheme() ?? false;
    });
  }

  void setIsDarkTheme(bool isDarkTheme) {
    state = isDarkTheme;
    AppSharedPreferences.saveIsDarkTheme(isDarkTheme);
  }
}
