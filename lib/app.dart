import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_riverpod/pages/home/home_page.dart';

import 'constants/resources/themes.dart';
import 'main/app_flavor.dart';

class App extends ConsumerStatefulWidget {
  const App({
    required this.appFlavor,
    Key? key,
  }) : super(key: key);

  final AppFlavor appFlavor;

  @override
  _AppState createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(
            // debugShowCheckedModeBanner: false,
            theme: Themes.appTheme(),
            // localizationsDelegates: AppLocalizations.localizationsDelegates,
            // supportedLocales: AppLocalizations.supportedLocales,
            title: 'MonstarLab Riverpod Template',
            home: _buildContent());
      },
    );
  }

  Widget _buildContent() {
    return const HomePage();
  }
}
