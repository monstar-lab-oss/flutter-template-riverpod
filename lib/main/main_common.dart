import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app.dart';
import '../data/providers/app_flavor_provider.dart';
import 'app_flavor.dart';

void mainCommon(AppFlavor appFlavor) {
  WidgetsFlutterBinding.ensureInitialized();
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
      startApp();
    },
    (error, stackTrace) {
      //TODO : Output error (to log or Firebase)
    },
  );
}
