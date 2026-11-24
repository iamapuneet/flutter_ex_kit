# Getting Started with flutter_ex_kit

This guide walks you through installing, importing, and setting up `flutter_ex_kit` in your Flutter projects.

---

## 1. System Requirements

Ensure your environment satisfies the following constraints:
- **Flutter SDK:** `>= 1.17.0`
- **Dart SDK:** `>= 3.5.3 < 4.0.0`

---

## 2. Installation

Add `flutter_ex_kit` using the Flutter CLI:

```bash
flutter pub add flutter_ex_kit
```

Or manually declare the dependency in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_ex_kit: ^0.0.6
```

Then fetch the package dependencies:

```bash
flutter pub get
```

---

## 3. Importing the Library

All extensions, utilities, animations, and validators are exported from a single unified barrel file:

```dart
import 'package:flutter_ex_kit/flutter_ex_kit.dart';
```

There is no need to import deep internal files. A single import makes every extension available throughout your file.

---

## 4. Quick Verification

To verify that the package is correctly linked, build a simple widget in your Flutter application:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ex_kit/flutter_ex_kit.dart';

class QuickTestWidget extends StatelessWidget {
  const QuickTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Spacing extension
        20.height,

        // String styling extension
        'flutter_ex_kit active!'.style(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: '#4A90E2'.toColor(),
        ),

        // Context screen width
        Text('Screen Width: ${context.width}px'),
      ],
    ).center();
  }
}
```

---

## 5. Next Steps

- Explore **[BuildContext Extensions](BuildContext-Extensions)** for responsive dimensions and routing.
- Check **[Widget Extensions](Widget-Extensions)** to simplify your widget tree.
- Learn about **[Validation & Formatters](Validation-and-Formatters)** for clean user input.
