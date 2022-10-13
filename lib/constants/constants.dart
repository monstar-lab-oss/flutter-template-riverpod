class Constants {
  Constants._private();

  /// Should be adjusted to the app's design
  static const figmaScreenWidth = 375;

  /// Japan locale
  static const japaneseLocaleCode = 'ja';

  /// Regex
  static const characterAndNumberOnlyRegex = '[0-9a-zA-Z]';
  static const halfWidthLetterOnlyRegex = '[a-zA-Z ]';
  static const characterOnlyRegex = '[a-zA-Z]';
  static const digitOnlyRegex = r'\d+';
  static const numberOnlyRegex = '[0-9]';
  static const fullWidth =
      '[^\u0020-\u007E\uFF61-\uFF9F\uFFA0-\uFFDC\uFFE8-\uFFEE0-9a-zA-Z]';
  static const halfWidth =
      '[\u0020-\u007E\uFF61-\uFF9F\uFFA0-\uFFDC\uFFE8-\uFFEE0-9a-zA-Z]';
}
