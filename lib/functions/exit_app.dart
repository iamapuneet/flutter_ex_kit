part of '../flutter_ex_kit.dart';

/// Handles the double-tap exit logic for a Flutter application.
///
/// Returns the updated [DateTime] timestamp of the back press, which the caller should
/// store in state (e.g. `_lastBackPressTime = exitApp(currentBackPressTime: _lastBackPressTime);`).
///
/// If [currentBackPressTime] is null or older than [threshold] (defaults to 2 seconds),
/// [exit] is called (or [notExit]) and the current timestamp is returned.
///
/// If the back press occurs within [threshold], the app exits using [SystemNavigator.pop].
DateTime exitApp({
  DateTime? currentBackPressTime,
  VoidCallback? exit,
  VoidCallback? notExit,
  Duration threshold = const Duration(seconds: 2),
}) {
  final now = DateTime.now();

  // If it's been more than threshold since the last press (or first press)
  if (currentBackPressTime == null || now.difference(currentBackPressTime) > threshold) {
    if (exit != null) {
      exit.call();
    } else {
      notExit?.call();
    }
    return now;
  }

  // Second press within threshold -> exit the app
  SystemNavigator.pop();
  return now;
}
