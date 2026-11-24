# String & Text Extensions Reference

`flutter_ex_kit` provides expressive extensions on `String` for styled `Text` widgets, hex color parsing, and casing utilities.

---

## 1. Fluent Text Styling (`style`)

Turn any string into a styled `Text` widget with customizable properties:

```dart
'Welcome to Flutter'.style(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.blueAccent,
  letterSpacing: 1.2,
  textAlign: TextAlign.center,
);
```

### Full Styling Parameters Supported:
- `fontSize`, `fontWeight`, `fontStyle`
- `color`, `backgroundColor`
- `letterSpacing`, `wordSpacing`, `height`
- `textAlign`, `maxLines`, `overflow`
- `decoration` (underline, lineThrough)
- `shadows`

---

## 2. Hex Color Conversion (`toColor`)

Parse 6-digit or 8-digit hexadecimal color strings into Flutter `Color` objects:

```dart
// Standard 6-digit with '#'
Color brand = '#4A90E2'.toColor();

// Without '#' prefix
Color accent = 'FF5733'.toColor();

// With alpha channel
Color transparentOverlay = '#80000000'.toColor();

// Fallback color for invalid strings
Color safeColor = 'invalid-hex'.toColor(defaultColor: Colors.grey);
```

---

## 3. String Capitalization

Convert text casing cleanly:

```dart
// Capitalize each word
'flutter ex kit'.capitalize(); // 'Flutter Ex Kit'

// Capitalize only first letter
'flutter ex kit'.capitalizeFirst(); // 'Flutter ex kit'
```

---

## 4. Boolean Parsing & Validation

Inspect and parse boolean strings:

```dart
// Check if string represents a boolean
'true'.isBool();  // true
'false'.isBool(); // true
'TRUE'.isBool(caseSensitive: false); // true
'hello'.isBool(); // false

// Convert string to boolean
'true'.toBool();  // true
'false'.toBool(); // false
```

---

## 5. Network Images on String (`networkImage`)

Load network images with progress indicator and error widgets directly from a URL string:

```dart
// String URL
String? avatarUrl = 'https://cdn.example.com/user_avatar.png?v=2';

// Render network image with automatic progress & fallback
avatarUrl.networkImage(
  height: 80,
  width: 80,
  fit: BoxFit.cover,
  errorWidget: const Icon(Icons.person, size: 60),
);
```

- Automatically handles signed query parameters.
- Displays themed `CircularProgressIndicator` during download.
- Gracefully renders `errorWidget` on connection failure.
- Returns `SizedBox.shrink()` if URL is null or empty.
