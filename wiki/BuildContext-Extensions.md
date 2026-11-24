# BuildContext Extensions Reference

`flutter_ex_kit` enriches Flutter's `BuildContext` with convenient, responsive, and routing shortcuts.

---

## 1. Screen Dimensions & Orientation

Directly retrieve screen metrics without writing verbose `MediaQuery.of(context)` calls:

```dart
// Screen width and height in logical pixels
double screenWidth  = context.width;
double screenHeight = context.height;

// Orientation checks
bool isLandscape = context.isLandscape;
bool isPortrait  = context.isPortrait;

// Pixel ratio and raw size
double pixelRatio = context.pixelRatio;
Size fullSize     = context.screenSize;
```

### Proportional Screen Calculations
```dart
// 50% of screen width and 20% of screen height
double halfWidth    = context.width * 0.5;
double headerHeight = context.height * 0.2;
```

---

## 2. Insets & Soft Keyboard Handling

Inspect keyboard visibility and system paddings:

```dart
// Bottom view inset (keyboard height)
double keyboardHeight = context.keyboardHeight;

// Check if soft keyboard is currently visible
bool isKeyboardOpen = context.isKeyboardOpen;

// System insets and safe padding
EdgeInsets insets  = context.viewInsets;
EdgeInsets padding = context.viewPadding;

// Hide the keyboard by unfocusing current node
context.hideKeyboard();
```

---

## 3. Theme & ColorScheme Shortcuts

Effortlessly inspect current theme properties and light/dark modes:

```dart
// Direct theme access
ThemeData theme       = context.theme;
TextTheme textTheme   = context.textTheme;
ColorScheme colors    = context.colorScheme;

// Mode checks
bool isDark  = context.isDarkMode;
bool isLight = context.isLightMode;

// Commonly used theme colors
Color primaryColor    = context.primaryColor;
Color scaffoldBgColor = context.scaffoldBackgroundColor;
```

---

## 4. Navigation & Route Management

Navigate between screens with concise methods:

```dart
// Push a new page
context.push(const ProfileScreen());

// Push replacement
context.pushReplacement(const DashboardScreen());

// Push named route
context.pushNamed('/settings', arguments: {'userId': 123});

// Pop top-most route
context.pop();

// Pop with return result
context.pop(true);

// Check if navigator can pop
if (context.canPop()) {
  context.pop();
}
```

---

## 5. SnackBars & User Feedback

Display snackbars with a single method call:

```dart
// Show simple text snackbar
context.showSnackBarText('Profile saved successfully!');

// Custom duration and background color
context.showSnackBarText(
  'Changes reverted.',
  duration: 4.seconds,
  backgroundColor: Colors.redAccent,
  action: SnackBarAction(
    label: 'Undo',
    textColor: Colors.white,
    onPressed: () {},
  ),
);

// Show fully customized SnackBar instance
context.showSnackBar(
  const SnackBar(content: Text('Custom SnackBar')),
);
```
