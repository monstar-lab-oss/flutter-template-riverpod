import 'package:flutter/material.dart';

import '../constants.dart';

enum FontSizes {
  fontSize9,
  fontSize11,
  fontSize12,
  fontSize13,
  fontSize14,
  fontSize15,
  fontSize16,
  fontSize18,
  fontSize20,
  fontSize22,
  fontSize24,
}

extension FontSizesExtension on FontSizes {
  double get fontSize {
    switch (this) {
      case FontSizes.fontSize9:
        return 9;
      case FontSizes.fontSize11:
        return 11;
      case FontSizes.fontSize12:
        return 12;
      case FontSizes.fontSize13:
        return 13;
      case FontSizes.fontSize14:
        return 14;
      case FontSizes.fontSize15:
        return 15;
      case FontSizes.fontSize16:
        return 16;
      case FontSizes.fontSize18:
        return 18;
      case FontSizes.fontSize20:
        return 20;
      case FontSizes.fontSize22:
        return 22;
      case FontSizes.fontSize24:
        return 24;
    }
  }

  double getRelativeFontSize() {
    final scaleFactor = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single).size.width /
        Constants.figmaScreenWidth;
    return fontSize * (scaleFactor >= 1 ? 1 : scaleFactor);
  }
}
