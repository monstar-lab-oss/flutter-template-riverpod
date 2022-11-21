import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_theme_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(appThemeNotifierProvider);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        color: Colors.greenAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Dark Mode',
            ),
            Switch(
              value: isDarkTheme,
              onChanged: (value) {
                ref
                    .read(appThemeNotifierProvider.notifier)
                    .setIsDarkTheme(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
