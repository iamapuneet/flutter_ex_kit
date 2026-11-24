import 'package:flutter/material.dart';

/// Useful extensions on [BuildContext] for responsive design, theme, and navigation.
extension ContextExtensions on BuildContext {
  /// Returns the screen [MediaQueryData].
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Returns the screen [Size].
  Size get screenSize => mediaQuery.size;

  /// Returns the screen width.
  double get width => screenSize.width;

  /// Returns the screen height.
  double get height => screenSize.height;

  /// Returns the device pixel ratio.
  double get pixelRatio => mediaQuery.devicePixelRatio;

  /// Returns the current orientation.
  Orientation get orientation => mediaQuery.orientation;

  /// Returns true if the device is in landscape mode.
  bool get isLandscape => orientation == Orientation.landscape;

  /// Returns true if the device is in portrait mode.
  bool get isPortrait => orientation == Orientation.portrait;

  /// Returns the view insets (e.g. keyboard height).
  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  /// Returns the view padding (e.g. status bar / notches).
  EdgeInsets get viewPadding => mediaQuery.viewPadding;

  /// Returns the bottom view inset (keyboard height).
  double get keyboardHeight => viewInsets.bottom;

  /// Returns true if the keyboard is open.
  bool get isKeyboardOpen => keyboardHeight > 0;

  // --- Theme helpers ---

  /// Returns the current [ThemeData].
  ThemeData get theme => Theme.of(this);

  /// Returns the current [TextTheme].
  TextTheme get textTheme => theme.textTheme;

  /// Returns the current [ColorScheme].
  ColorScheme get colorScheme => theme.colorScheme;

  /// Returns true if the active theme is dark mode.
  bool get isDarkMode => theme.brightness == Brightness.dark;

  /// Returns true if the active theme is light mode.
  bool get isLightMode => theme.brightness == Brightness.light;

  /// Returns the primary color of current theme.
  Color get primaryColor => theme.primaryColor;

  /// Returns the scaffold background color.
  Color get scaffoldBackgroundColor => theme.scaffoldBackgroundColor;

  // --- Navigation helpers ---

  /// Pops the top-most route off the navigator.
  void pop<T extends Object?>([T? result]) => Navigator.of(this).pop(result);

  /// Whether the navigator can be popped.
  bool canPop() => Navigator.of(this).canPop();

  /// Pushes a new route onto the navigator.
  Future<T?> push<T extends Object?>(Widget page) {
    return Navigator.of(this).push<T>(
      MaterialPageRoute<T>(builder: (_) => page),
    );
  }

  /// Pushes a replacement route onto the navigator.
  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
    Widget page, {
    TO? result,
  }) {
    return Navigator.of(this).pushReplacement<T, TO>(
      MaterialPageRoute<T>(builder: (_) => page),
      result: result,
    );
  }

  /// Pushes a named route onto the navigator.
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamed<T>(
      routeName,
      arguments: arguments,
    );
  }

  // --- Dialog & SnackBar helpers ---

  /// Shows a [SnackBar] with the given [snackBar].
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    SnackBar snackBar,
  ) {
    return ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  /// Quick shortcut to show a text [SnackBar].
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBarText(
    String message, {
    Duration duration = const Duration(seconds: 3),
    Color? backgroundColor,
    SnackBarAction? action,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
        backgroundColor: backgroundColor,
        action: action,
      ),
    );
  }

  /// Unfocuses current focus node and hides soft keyboard.
  void hideKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
