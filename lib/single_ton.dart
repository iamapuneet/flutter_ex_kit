part of 'flutter_ex_kit.dart';
/// Defines the theme configuration and global settings.
class ExKitTheme {
  static final ExKitTheme _instance = ExKitTheme._internal(); // ✅ Instance initialized immediately

  /// A prefix emoji string used in logs or debug outputs.
  final String logStartEmoji;

  /// A suffix emoji string used in logs or debug outputs.
  final String logEndEmoji;

  /// A font-family string used in logs or debug outputs.
  final String fontFamily;

  /// Enables or disables logging globally.
  final bool logEnable;

  /// The default text color used throughout the application.
  final Color textColor;

  /// The default color for loading images.
  final Color loadingImageColor;

  /// Private constructor for singleton implementation.
  ExKitTheme._internal({
    this.logStartEmoji = '🔥🔥🔥🔥🔥',
    this.logEndEmoji = '🔥🔥🔥🔥🔥',
    this.fontFamily = 'Euclid_Circular',
    this.textColor = Colors.black,
    this.loadingImageColor = Colors.black,
    this.logEnable = true,
  });

  /// Factory constructor to return the singleton instance.
  factory ExKitTheme() => _instance;

  /// Returns a **new modified instance** of `ExKitTheme` without breaking immutability.
  ExKitTheme copyWith({
    String? logStartEmoji,
    String? logEndEmoji,
    String? fontFamily,
    Color? textColor,
    Color? loadingImageColor,
    bool? logEnable,
  }) {
    return ExKitTheme._internal(
      logStartEmoji: logStartEmoji ?? this.logStartEmoji,
      logEndEmoji: logEndEmoji ?? this.logEndEmoji,
      textColor: textColor ?? this.textColor,
      fontFamily: fontFamily ?? this.fontFamily,
      loadingImageColor: loadingImageColor ?? this.loadingImageColor,
      logEnable: logEnable ?? this.logEnable,
    );
  }
}

/// Singleton class to manage global theme
class ExKitThemeManager {
  static final ExKitThemeManager _instance = ExKitThemeManager._internal();

  /// Notifier to update the theme across the app
  final ValueNotifier<ExKitTheme> themeNotifier = ValueNotifier(ExKitTheme());

  /// Private constructor
  ExKitThemeManager._internal();

  /// Factory constructor to get the singleton instance
  factory ExKitThemeManager() => _instance;

  /// Update theme globally
  void updateTheme(ExKitTheme newTheme) {
    themeNotifier.value = newTheme;
  }
}

/// Update theme globally
final exKit = ExKitThemeManager();

/// ✅ Always use exKit.themeNotifier.value instead of a fixed copy
ExKitTheme get exKitTheme => exKit.themeNotifier.value;
