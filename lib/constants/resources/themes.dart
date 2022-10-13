import 'package:flutter/material.dart';
import 'package:flutter_template_riverpod/constants/resources/text_styles.dart';

import 'colors.dart';
import 'resources.dart';

class Themes {
  static ThemeData appTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        centerTitle: false,
        color: AppColors.light.white,
        toolbarTextStyle: AppTextStyles.hiraginoSansRegular11
            .copyWith(color: AppColors.light.mainText),
        titleTextStyle: AppTextStyles.hiraginoSansRegular12
            .copyWith(color: AppColors.light.mainText),
      ),
    );
  }
}
