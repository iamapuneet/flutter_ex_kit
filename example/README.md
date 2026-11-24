# Example Application for flutter_ex_kit

This sample application demonstrates how to use `flutter_ex_kit` extensions and utilities in a real-world Flutter layout.

---

## Features Demonstrated

| Category | Example Usage |
| :--- | :--- |
| **Spacing** | `16.height`, `12.height`, `30.height` |
| **BuildContext** | `context.width`, `context.isDarkMode`, `context.showSnackBarText()` |
| **Widget Modifiers** | `.all(12)`, `.symmetric(horizontal: 16, vertical: 8)`, `.onTap()`, `.center()` |
| **String Utilities** | `'#4A90E2'.toColor()`, `'flutter ex kit'.capitalize()`, `'Title'.style(...)` |
| **Numbers & Math** | `22.ordinal`, `455.roman` |
| **Duration** | `5.seconds` |
| **DateTime** | `DateTime.now().toDateString`, `DateTime.now().timeAgo` |
| **Collections** | `fruits.mapIndexed((index, item) => ...)` |

---

## Getting Started

1. Navigate to the `example/` directory:
   ```bash
   cd example
   ```

2. Fetch package dependencies:
   ```bash
   flutter pub get
   ```

3. Run the example on your connected device or simulator:
   ```bash
   flutter run
   ```

---

## Source Code

See [main.dart](main.dart) for the complete implementation.
