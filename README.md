<div align="center">

# flutter_ex_kit

[![pub package](https://img.shields.io/pub/v/flutter_ex_kit.svg)](https://pub.dev/packages/flutter_ex_kit)
[![pub points](https://img.shields.io/pub/points/flutter_ex_kit?color=2E8B57)](https://pub.dev/packages/flutter_ex_kit/score)
[![pub likes](https://img.shields.io/pub/likes/flutter_ex_kit)](https://pub.dev/packages/flutter_ex_kit)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

**Supercharge your Flutter development with clean, concise, and expressive extensions.**

Eliminate boilerplate code for spacing, layout, navigation, strings, dates, animations, and input validation.

[Features](#-features) • [Installation](#-installation) • [API Guide](#-api-guide) • [Example](#-example) • [Contributing](#-contributing)

</div>

---

## 📖 Table of Contents

- [Why flutter_ex_kit?](#-why-flutter_ex_kit)
- [Installation](#-installation)
- [Quick Start](#-quick-start)
- [API Guide](#-api-guide)
  - [1. Spacing & Numbers](#1-spacing--numbers)
  - [2. BuildContext & Navigation](#2-buildcontext--navigation)
  - [3. Widget Layout & Modifiers](#3-widget-layout--modifiers)
  - [4. String & Text Styling](#4-string--text-styling)
  - [5. Duration & Async Delay](#5-duration--async-delay)
  - [6. DateTime & Relative Time](#6-datetime--relative-time)
  - [7. Iterables & Collections](#7-iterables--collections)
  - [8. Form Validation & Text Formatters](#8-form-validation--text-formatters)
  - [9. Animations & System Utilities](#9-animations--system-utilities)
- [Example Project](#-example-project)
- [Contributing](#-contributing)
- [License](#-license)

---

## 💡 Why flutter_ex_kit?

Writing Flutter UI often involves repetitive nesting, boilerplate constructors, and tedious conversions. `flutter_ex_kit` simplifies this:

| Traditional Flutter | With `flutter_ex_kit` |
| :--- | :--- |
| `SizedBox(height: 16)` | `16.height` |
| `Padding(padding: EdgeInsets.all(12), child: widget)` | `widget.all(12)` |
| `MediaQuery.of(context).size.width` | `context.width` |
| `Theme.of(context).brightness == Brightness.dark` | `context.isDarkMode` |
| `Navigator.of(context).push(MaterialPageRoute(...))` | `context.push(MyPage())` |
| `Color(int.parse("FF4A90E2", radix: 16))` | `'#4A90E2'.toColor()` |
| `Future.delayed(Duration(seconds: 2))` | `await 2.delay()` |

---

## 📦 Installation

Add `flutter_ex_kit` to your project:

```bash
flutter pub add flutter_ex_kit
```

Or add it directly to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_ex_kit: ^0.0.6
```

---

## 🚀 Quick Start

Import the library in any Dart file to instantly access all extensions and utilities:

```dart
import 'package:flutter_ex_kit/flutter_ex_kit.dart';
```

---

## 📚 API Guide

### 1. Spacing & Numbers

Create `SizedBox` spacing widgets and convert numbers easily:

```dart
// Spacing
16.height; // SizedBox(height: 16.0)
24.width;  // SizedBox(width: 24.0)

// Ordinal representation
print(1.ordinal);  // '1st'
print(22.ordinal); // '22nd'
print(143.ordinal);// '143rd'

// Roman numerals
print(1.roman);    // 'I'
print(12.roman);   // 'XII'
print(455.roman);  // 'CDLV'
print(3999.roman); // 'MMMCMXCIX'
```

---

### 2. BuildContext & Navigation

Access screen dimensions, theme modes, navigation routes, and snackbars directly from `context`:

```dart
// Screen Dimensions & Orientation
double screenWidth  = context.width;
double screenHeight = context.height;
bool isLandscape    = context.isLandscape;
bool isPortrait     = context.isPortrait;

// Theme & Modes
ThemeData theme     = context.theme;
bool isDark         = context.isDarkMode;
bool isLight        = context.isLightMode;
Color primaryColor  = context.primaryColor;

// Navigation
context.push(const ProfileScreen());
context.pushReplacement(const HomeScreen());
context.pushNamed('/dashboard');
context.pop();

// Keyboard & SnackBars
context.showSnackBarText('Profile updated successfully!');
context.hideKeyboard(); // Unfocuses current input
```

---

### 3. Widget Layout & Modifiers

Fluent chaining for cleaner, more readable widget trees:

```dart
// Padding
MyWidget().all(16);
MyWidget().symmetric(horizontal: 16, vertical: 8);
MyWidget().only(left: 12, top: 8);

// Alignment & Layout
MyWidget().center();
MyWidget().expanded(flex: 2);
MyWidget().flexible();
MyWidget().safeArea();
MyWidget().opacity(0.85);

// Interactivity & Visibility
MyWidget().onTap(() => print('Widget tapped!'));
MyWidget().visibility(visible: isVisible);

// Transformations
MyWidget().rotate(angle: 3.14 / 4);
MyWidget().fittedBox(fit: BoxFit.scaleDown);
```

---

### 4. String & Text Styling

Transform strings into styled `Text` widgets, parse hex colors, and validate values:

```dart
// Hex string to Color
Color brandColor = '#4A90E2'.toColor();
Color accentColor = 'FF5733'.toColor();

// Fluent Text widget creation
'Welcome Back!'.style(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Colors.blueAccent,
  textAlign: TextAlign.center,
);

// String Capitalization
'hello world'.capitalize();      // 'Hello World'
'hello world'.capitalizeFirst(); // 'Hello world'

// Boolean Parsing
'true'.isBool(); // true
'true'.toBool(); // true
```

---

### 5. Duration & Async Delay

Create `Duration` objects fluently and wait without `Future.delayed` boilerplate:

```dart
// Duration creation
Duration timeout  = 5.seconds;
Duration anim     = 300.milliseconds;
Duration cooldown = 2.minutes;
Duration cacheAge = 1.days;

// Async delay
await 2.delay(() {
  print('Runs after 2 seconds');
});

// Milliseconds delay
await 500.delayMs();
```

---

### 6. DateTime & Relative Time

Human-readable relative time and convenient day checks:

```dart
DateTime publishedDate = DateTime.now().subtract(const Duration(minutes: 15));

// Relative time string
print(publishedDate.timeAgo); // '15 minutes ago'
print(DateTime.now().timeAgo); // 'Just now'

// Day checks
print(publishedDate.isToday);     // true
print(publishedDate.isYesterday); // false
print(publishedDate.isTomorrow);  // false

// Simple date/time formatters
print(DateTime.now().toDateString); // '2026-11-24'
print(DateTime.now().toTimeString); // '21:30:00'
```

---

### 7. Iterables & Collections

Functional operations with null-safety:

```dart
final users = ['Alice', 'Bob', 'Charlie'];

// Find with null-safety
final match = users.firstWhereOrNull((name) => name.startsWith('B')); // 'Bob'

// Iteration with indices
users.forEachIndexed((index, name) {
  print('User $index: $name');
});

// Map with indices
final numberedList = users.mapIndexed((i, name) => '$i. $name').toList();

// Safe null checks
List<String>? emptyList;
print(emptyList.isNullOrEmpty);    // true
print(users.isNotNullOrEmpty);      // true
```

---

### 8. Form Validation & Text Formatters

Built-in regex validation and input formatters for text fields:

```dart
// Disallow consecutive double spaces in TextFields
TextField(
  inputFormatters: [SingleSpaceFormatter()],
);

// Regex Validators
bool isDigitsOnly = InputFormatValidation.onlyNumberAllow.hasMatch('12345');
bool isValidEmail = InputFormatValidation.onlyEmailAllow.hasMatch('test@mail.com');
bool isTextOnly   = InputFormatValidation.onlyTextAllow.hasMatch('Flutter');
```

---

### 9. Animations & System Utilities

Custom animations and debug log utilities:

```dart
// Custom fade-in animation
FadeInAnimation(
  duration: 800.milliseconds,
  direction: FadeInAnimationEnum.top,
  child: const Card(...),
);

// Console output with emoji markers in debug mode
output('User authentication successful');
```

---

## 📱 Example Project

Check the `example/` folder for a complete runnable app showcasing these utilities:

```bash
cd example
flutter run
```

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/iamapuneet/flutter_ex_kit/issues) and read [CONTRIBUTING.md](CONTRIBUTING.md) to get started.

---

## 👨‍💻 Author

**Puneet Sharma**  
- GitHub: [@iamapuneet](https://github.com/iamapuneet)
- Blog: [iamapuneet.blogspot.com](https://iamapuneet.blogspot.com)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
