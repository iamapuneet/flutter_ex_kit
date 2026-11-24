import 'dart:async';

/// Extensions on [num] to easily construct [Duration] instances and delay execution.
extension DurationExtensions on num {
  /// Creates a [Duration] in microseconds.
  Duration get microseconds => Duration(microseconds: round());

  /// Creates a [Duration] in milliseconds.
  Duration get milliseconds => Duration(milliseconds: round());

  /// Creates a [Duration] in seconds.
  Duration get seconds => Duration(seconds: round());

  /// Creates a [Duration] in minutes.
  Duration get minutes => Duration(minutes: round());

  /// Creates a [Duration] in hours.
  Duration get hours => Duration(hours: round());

  /// Creates a [Duration] in days.
  Duration get days => Duration(days: round());

  /// Returns a [Future] that completes after this duration in seconds (or optional milliseconds).
  Future<void> delay([FutureOr<void> Function()? callback]) async {
    await Future.delayed(seconds);
    await callback?.call();
  }

  /// Returns a [Future] that completes after this duration in milliseconds.
  Future<void> delayMs([FutureOr<void> Function()? callback]) async {
    await Future.delayed(milliseconds);
    await callback?.call();
  }
}
