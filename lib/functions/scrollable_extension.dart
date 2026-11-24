part of '../flutter_ex_kit.dart';

/// Extension on [BuildContext] to provide a method for scrolling a widget into view.
///
/// This extension adds a convenient method to the [BuildContext] for ensuring a widget is visible
/// and optionally scrolling it by a specific number of pixels using a [ScrollController].
///
/// Example usage:
/// ```dart
/// context.scrollToVisible(
///   scrollController: myScrollController,
///   pixels: 50.0,
///   duration: Duration(milliseconds: 200),
///   curve: Curves.easeInOut,
/// );
/// ```
extension ScrollableExtension on BuildContext {
  /// Ensures that the widget associated with this [BuildContext] is visible and scrolls it by the specified number of pixels.
  ///
  /// The method uses [Scrollable.ensureVisible] to ensure that the widget is visible. If a [ScrollController]
  /// is provided and has attached clients, it safely scrolls the widget by the specified number of pixels.
  void scrollToVisible({
    ScrollController? scrollController,
    double pixels = 30.0,
    Duration duration = const Duration(milliseconds: 100),
    Curve curve = Curves.easeInOut,
  }) {
    // Ensure the widget is visible
    Scrollable.ensureVisible(
      this,
      duration: Duration.zero,
      curve: curve,
    );

    // Safely scroll by a specific number of pixels without exceeding bounds
    if (scrollController != null && scrollController.hasClients) {
      Future.delayed(duration, () {
        if (scrollController.hasClients) {
          final targetOffset = (scrollController.offset - pixels).clamp(
            scrollController.position.minScrollExtent,
            scrollController.position.maxScrollExtent,
          );
          scrollController.animateTo(
            targetOffset,
            duration: duration,
            curve: curve,
          );
        }
      });
    }
  }
}
