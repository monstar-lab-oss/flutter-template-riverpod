import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/resources/themes.dart';
import '../main/app_flavor.dart';
import 'common/app_shared_preference.dart';
import 'common/app_theme_provider.dart';
import 'feature/home/home_page.dart';

class App extends ConsumerStatefulWidget {
  const App({
    required this.appFlavor,
    Key? key,
  }) : super(key: key);

  final AppFlavor appFlavor;

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await AppSharedPreferences.init();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = ref.watch(appThemeNotifierProvider);
    return Builder(
      builder: (context) {
        return MaterialApp(
          // debugShowCheckedModeBanner: false,
          theme: Themes.appTheme(Brightness.light),
          darkTheme: Themes.appTheme(Brightness.dark),
          themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          // localizationsDelegates: AppLocalizations.localizationsDelegates,
          // supportedLocales: AppLocalizations.supportedLocales,
          title: 'MonstarLab Riverpod Template',
          home: _buildContent(),
        );
      },
    );
  }

  Widget _buildContent() {
    return const HomePage();
  }
}
