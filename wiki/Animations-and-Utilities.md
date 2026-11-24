# Animations & Utilities Reference

`flutter_ex_kit` provides animated widgets, custom navigation helpers, exit-app handlers, and debugging tools.

---

## 1. FadeInAni (Custom Fade-In Animation)

A smooth slide-and-fade animation widget:

```dart
FadeInAni(
  delay: 1.0,           // Duration multiplier (500ms * delay)
  fadeOffset: 40.0,     // Slide offset distance
  direction: FadeInDirection.btt, // Bottom-to-top
  child: const Card(
    child: Text('Animated Card'),
  ),
);
```

### Directions Supported:
- `FadeInDirection.ltr`: Left-to-right
- `FadeInDirection.rtl`: Right-to-left
- `FadeInDirection.ttb`: Top-to-bottom
- `FadeInDirection.btt`: Bottom-to-top

---

## 2. BottomAnimation (Slide-Up Animation)

A widget that animates its child from bottom to top on appearance:

```dart
BottomAnimation(
  child: Container(
    height: 100,
    color: Colors.amber,
    child: const Text('Slides up from bottom'),
  ),
);
```

---

## 3. Double-Tap Exit App (`exitApp`)

Prevents accidental app exits by requiring users to press the back button twice within a specified window (default: 2 seconds):

```dart
class HomeScreenState extends State<HomeScreen> {
  DateTime? _lastBackPressTime;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        _lastBackPressTime = exitApp(
          currentBackPressTime: _lastBackPressTime,
          exit: () {
            context.showSnackBarText('Press back again to exit');
          },
        );
      },
      child: Scaffold(...),
    );
  }
}
```

---

## 4. Debug Logging Utility (`output`)

A clean debug logging function that formats logs with configurable start/end emoji markers:

```dart
output('User profile payload received: {id: 101}');
```

Output in console (when `logEnable` is true):
```
[log] 🔥🔥🔥🔥🔥
[log] User profile payload received: {id: 101}
[log] 🔥🔥🔥🔥🔥
```

---

## 5. PageController Navigation

Simple page transitions for `PageView`:

```dart
PageController controller = PageController();

// Animate to next page (300ms, Curves.easeIn)
controller.goToNextPage();

// Animate to previous page (300ms, Curves.easeIn)
controller.goToPreviousPage();
```
