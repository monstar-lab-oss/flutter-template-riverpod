import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/providers/app_flavor_provider.dart';
import '../presentation/app.dart';
import 'app_flavor.dart';

void mainCommon(AppFlavor appFlavor) {
  debugPrint('Launching Mode : ${appFlavor.appFlavorType}.');

  Future<void> startApp() async {
    runApp(
      ProviderScope(
        overrides: [
          appFlavorProvider.overrideWithValue(appFlavor),
        ],
        child: App(
          appFlavor: appFlavor,
        ),
      ),
    );
  }

  runZonedGuarded(
    () {
      WidgetsFlutterBinding.ensureInitialized();
      startApp();
    },
    (error, stackTrace) {
      //TODO : Output error (to log or Firebase)
    },
  );
}
