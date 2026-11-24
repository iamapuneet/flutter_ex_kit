import 'package:flutter/material.dart';

/// Convenient layout and styling extensions on [Widget].
extension WidgetLayoutExtensions on Widget {
  /// Wraps this widget in an [Expanded].
  Expanded expanded({int flex = 1, Key? key}) {
    return Expanded(
      key: key,
      flex: flex,
      child: this,
    );
  }

  /// Wraps this widget in a [Flexible].
  Flexible flexible({int flex = 1, FlexFit fit = FlexFit.loose, Key? key}) {
    return Flexible(
      key: key,
      flex: flex,
      fit: fit,
      child: this,
    );
  }

  /// Wraps this widget in an [Opacity].
  Opacity opacity(double opacity, {Key? key, bool alwaysIncludeSemantics = false}) {
    return Opacity(
      key: key,
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: this,
    );
  }

  /// Wraps this widget in an [InkWell] with an [onTap] handler.
  Widget onTap(
    VoidCallback? onTap, {
    Key? key,
    BorderRadius? borderRadius,
    Color? splashColor,
    Color? highlightColor,
  }) {
    return InkWell(
      key: key,
      onTap: onTap,
      borderRadius: borderRadius,
      splashColor: splashColor,
      highlightColor: highlightColor,
      child: this,
    );
  }

  /// Wraps this widget in a [Visibility] widget.
  Visibility visibility({
    Key? key,
    required bool visible,
    bool maintainState = false,
    bool maintainAnimation = false,
    bool maintainSize = false,
    bool maintainSemantics = false,
    bool maintainInteractivity = false,
    Widget replacement = const SizedBox.shrink(),
  }) {
    return Visibility(
      key: key,
      visible: visible,
      maintainState: maintainState,
      maintainAnimation: maintainAnimation,
      maintainSize: maintainSize,
      maintainSemantics: maintainSemantics,
      maintainInteractivity: maintainInteractivity,
      replacement: replacement,
      child: this,
    );
  }

  /// Wraps this widget in a [Transform.rotate] widget.
  Widget rotate({required double angle, Key? key, Offset? origin, AlignmentGeometry alignment = Alignment.center}) {
    return Transform.rotate(
      key: key,
      angle: angle,
      origin: origin,
      alignment: alignment,
      child: this,
    );
  }

  /// Wraps this widget in a [FittedBox].
  Widget fittedBox({
    Key? key,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) {
    return FittedBox(
      key: key,
      fit: fit,
      alignment: alignment,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// Wraps this widget in a [SafeArea].
  Widget safeArea({
    Key? key,
    bool left = true,
    bool top = true,
    bool right = true,
    bool bottom = true,
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) {
    return SafeArea(
      key: key,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
      child: this,
    );
  }
}
