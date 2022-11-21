import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/resources/themes.dart';
import '../main/app_flavor.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(
          // debugShowCheckedModeBanner: false,
          theme: Themes.appTheme(),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
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
