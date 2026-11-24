part of '../flutter_ex_kit.dart';

/// Extension on [BuildContext] to provide easy access to common MediaQuery properties.
///
/// This extension allows quick retrieval of screen width, height, aspect ratio,
/// and view insets (such as keyboard height) with optimized inherited model subscriptions.
extension MediaQuerysValues on BuildContext {
  /// Returns the screen width.
  double get mw => MediaQuery.sizeOf(this).width;

  /// Returns the screen height.
  double get mh => MediaQuery.sizeOf(this).height;

  /// Returns the screen aspect ratio.
  double get ar => MediaQuery.sizeOf(this).aspectRatio;

  /// Returns the bottom view inset (e.g., keyboard height).
  double get vIb => MediaQuery.viewInsetsOf(this).bottom;
}
