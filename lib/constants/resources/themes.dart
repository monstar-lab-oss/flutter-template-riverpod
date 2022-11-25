import 'package:flutter/material.dart';

import 'resources.dart';

class Themes {
  static ThemeData appTheme(Brightness brightness) {
    final colors =
        brightness == Brightness.light ? AppColors.light : AppColors.dark;
    return ThemeData(
      appBarTheme: AppBarTheme(
        centerTitle: false,
        color: colors.white,
        toolbarTextStyle: AppTextStyles.hiraginoSansRegular11
            .copyWith(color: colors.mainText),
        titleTextStyle: AppTextStyles.hiraginoSansRegular12
            .copyWith(color: colors.mainText),
      ),
    );
  }
}
