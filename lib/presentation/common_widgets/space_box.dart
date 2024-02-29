import 'package:flutter/material.dart';

/// [SpaceBox] is a widget which shows space box.
class SpaceBox extends SizedBox {
  /// Creates [SpaceBox]
  ///
  /// The [width] and [height] arguments must not be `null` (although they each
  /// have default values).
  const SpaceBox({
    double super.width = 8.0,
    double super.height = 8.0,
    super.key,
  });

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
