# flutter_ex_kit

`flutter_ex_kit` is a comprehensive Flutter utility library that provides a rich collection of extensions, custom widgets, animations, formatting helpers, and responsive utilities to supercharge your Flutter development.

## 🚀 Features at a Glance

- **BuildContext Extensions:** Quick access to screen dimensions (`context.width`, `context.height`), theme (`context.theme`, `context.isDarkMode`), navigation (`context.push()`, `context.pop()`), and keyboard management.
- **Widget Extensions:** Fluent helpers like `.all()`, `.symmetric()`, `.center()`, `.expanded()`, `.flexible()`, `.opacity()`, `.onTap()`, `.visibility()`, and `.safeArea()`.
- **Number & Spacing:** Effortless `SizedBox` generation (`16.height`, `24.width`), ordinal notation (`22.ordinal`), and Roman numerals (`12.roman`).
- **Duration Helpers:** Intuitive duration syntax (`5.seconds`, `300.milliseconds`, `2.minutes`, `1.days`) with built-in async delay (`2.delay()`).
- **String Extensions:** Direct styled text creation (`'Title'.style(...)`), string capitalization (`capitalize()`, `capitalizeFirst()`), hex color parsing (`'#FF5733'.toColor()`), and boolean parsing.
- **DateTime Helpers:** Relative time (`timeAgo`), convenience checks (`isToday`, `isYesterday`, `isTomorrow`), and date/time formatters.
- **Iterable & Collections:** Functional helpers including `firstWhereOrNull()`, `mapIndexed()`, `forEachIndexed()`, and null-safe `isNullOrEmpty`.
- **Validation & Formatters:** `InputFormatValidation` (regex for digits, email, and emojis) and `SingleSpaceFormatter`.
- **Custom Animations & Nav:** Fade-in, slide-up animations, custom page controller helpers, and double-tap exit handling.
- **Debug Logging:** `output()` logging utility with customizable visual markers and emojis.

---

## 📦 Installation

Add `flutter_ex_kit` to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_ex_kit: ^0.0.6
```

Then run:

```bash
flutter pub get
```

Import everything with a single line:

```dart
import 'package:flutter_ex_kit/flutter_ex_kit.dart';
```

---

## 💡 Code Examples

### 1. Spacing & Numbers
```dart
// Spacing
16.height; // SizedBox(height: 16)
24.width;  // SizedBox(width: 24)

// Ordinal & Roman numbers
print(1.ordinal);  // '1st'
print(22.ordinal); // '22nd'
print(12.roman);   // 'XII'
```

### 2. BuildContext & Navigation
```dart
// Dimensions & Theme
double screenWidth = context.width;
bool isDark = context.isDarkMode;

// Navigation
context.push(const ProfileScreen());
context.pop();

// SnackBar & Keyboard
context.showSnackBarText('Profile saved successfully!');
context.hideKeyboard();
```

### 3. Widget Extensions
```dart
// Padding & Centering
Text('Hello World').symmetric(horizontal: 16, vertical: 8).center();

// Tap handling & Layout
MyCard()
  .onTap(() => print('Tapped!'))
  .expanded();
```

### 4. String & Colors
```dart
// Hex to Color
Color primary = '#FF5733'.toColor();

// Capitalize strings
'hello world'.capitalize(); // 'Hello World'

// Fluent Text styling
'Welcome'.style(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.blue,
);
```

### 5. Duration & Delays
```dart
// Create Durations
Duration timeout = 5.seconds;
Duration anim = 300.milliseconds;

// Delay execution
await 2.delay(() {
  print('Executed after 2 seconds');
});
```

### 6. DateTime & Relative Time
```dart
DateTime date = DateTime.now();

print(date.isToday);     // true
print(date.timeAgo);     // 'Just now' or '5 minutes ago'
print(date.toDateString); // '2026-05-04'
```

---

## 📖 Documentation

For detailed examples and guide:
[Read Full Documentation](https://iamapuneet.blogspot.com/blog-post_18)

## 🚀 Author

Developed by **Puneet Sharma**.

## 📄 License

Licensed under the [MIT License](LICENSE).
