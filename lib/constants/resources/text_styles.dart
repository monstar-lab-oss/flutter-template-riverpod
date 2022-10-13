import 'package:flutter/material.dart';

import 'font_sizes.dart';
import 'fonts.dart';

class AppTextStyles {
  AppTextStyles._private();

  /// Font: Hiragino Sans - Weight: 400 - Size: 12
  static final hiraginoSansRegular12 = TextStyle(
    fontFamily: AppFonts.hiraginoSans,
    fontWeight: FontWeight.w400,
    fontSize: FontSizes.fontSize12.getRelativeFontSize(),
  );

  /// Font: Hiragino Sans - Weight: 400 - Size: 11
  static final hiraginoSansRegular11 = TextStyle(
    fontFamily: AppFonts.hiraginoSans,
    fontWeight: FontWeight.w400,
    fontSize: FontSizes.fontSize11.getRelativeFontSize(),
  );
}
