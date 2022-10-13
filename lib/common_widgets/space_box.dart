import 'package:flutter/material.dart';

/// [SpaceBox] is a widget which shows space box.
class SpaceBox extends SizedBox {
  /// Creates [SpaceBox]
  ///
  /// The [width] and [height] arguments must not be `null` (although they each
  /// have default values).
  const SpaceBox({
    double width = 8.0,
    double height = 8.0,
    Key? key,
  }) : super(width: width, height: height, key: key);

  /// Creates [SpaceBox] with [width].
  const SpaceBox.width([
    double value = 8.0,
    Key? key,
  ]) : super(width: value, key: key);

  /// Creates [SpaceBox] with [height].
  const SpaceBox.height([
    double value = 8.0,
    Key? key,
  ]) : super(height: value, key: key);
}
