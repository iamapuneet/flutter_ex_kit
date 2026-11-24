part of '../flutter_ex_kit.dart';

/// A widget that applies a fade-in and sliding animation to its child widget.
///
/// This widget animates its child widget by fading it in while simultaneously sliding it
/// in from one of four possible directions: top-to-bottom (ttb), bottom-to-top (btt),
/// left-to-right (ltr), or right-to-left (rtl). The animation duration and direction
/// can be customized using the `delay`, `fadeOffset`, and `direction` parameters.
class FadeInAni extends StatefulWidget {
  /// Creates a [FadeInAni] widget.
  const FadeInAni({
    super.key,
    required this.child,
    required this.delay,
    required this.direction,
    required this.fadeOffset,
  });

  /// The widget to be animated.
  final Widget child;

  /// The duration multiplier for the animation.
  final double delay;

  /// The distance the widget moves during the fade-in animation.
  final double fadeOffset;

  /// The direction from which the widget slides in.
  final FadeInDirection direction;

  @override
  State<FadeInAni> createState() => _FadeInAniState();
}

class _FadeInAniState extends State<FadeInAni>
    with SingleTickerProviderStateMixin {
  /// Controls the animation progress.
  late final AnimationController controller;

  /// Controls the opacity transition.
  late final Animation<double> opacityAnimation;

  /// Controls the slide transition based on [FadeInDirection].
  late final Animation<double> inAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize controller and start animation safely in lifecycle
    controller = AnimationController(
      duration: Duration(milliseconds: (500 * widget.delay).round()),
      vsync: this,
    );

    inAnimation = Tween<double>(begin: -widget.fadeOffset, end: 0).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut),
    );

    opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeIn),
    );

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // Uses AnimatedBuilder instead of manual setState listeners for optimal performance
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.translate(
          offset: switch (widget.direction) {
            FadeInDirection.ltr => Offset(inAnimation.value, 0),
            FadeInDirection.rtl => Offset(-inAnimation.value, 0),
            FadeInDirection.ttb => Offset(0, inAnimation.value),
            FadeInDirection.btt => Offset(0, -inAnimation.value),
          },
          child: Opacity(
            opacity: opacityAnimation.value.clamp(0.0, 1.0),
            child: child,
          ),
        );
      },
      child: widget.child,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
