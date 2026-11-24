<div align="center">

# flutter_ex_kit

[![pub package](https://img.shields.io/pub/v/flutter_ex_kit.svg)](https://pub.dev/packages/flutter_ex_kit)
[![pub points](https://img.shields.io/pub/points/flutter_ex_kit?color=2E8B57)](https://pub.dev/packages/flutter_ex_kit/score)
[![pub likes](https://img.shields.io/pub/likes/flutter_ex_kit)](https://pub.dev/packages/flutter_ex_kit)
[![Platform: Flutter](https://img.shields.io/badge/platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20macOS%20%7C%20Windows%20%7C%20Linux-02569B.svg)](https://pub.dev/packages/flutter_ex_kit)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Sponsor](https://img.shields.io/badge/Sponsor-%E2%9D%A4-ea4aaa.svg)](https://github.com/sponsors/iamapuneet)
[![GitHub stars](https://img.shields.io/github/stars/iamapuneet/flutter_ex_kit.svg?style=social)](https://github.com/iamapuneet/flutter_ex_kit)

**Supercharge your Flutter development with clean, concise, and expressive extensions.**

A comprehensive Flutter extension suite and utility kit for BuildContext, widgets, spacing, navigation, strings, dates, and responsive UI. Eliminate repetitive boilerplate code across your entire app.

</div>

---

> ### 📖 Official In-Depth Documentation
> 
> **Complete guides, full API documentation, tutorials, and interactive examples are hosted at:**  
> 👉 **[https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit](https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit)**  
> *(Refer to the link above for the detailed documentation).*

---

## ⚡ Quick Comparison

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

## 🚀 Key Feature Highlights

- **📱 BuildContext Shortcuts:** Quick access to screen dimensions (`context.width`, `context.height`), theme properties (`context.theme`, `context.isDarkMode`), routing (`context.push()`, `context.pop()`), snackbars, and soft-keyboard management.
- **📏 Spacing & Numbers:** Effortless `SizedBox` generation (`16.height`, `24.width`), English ordinal representation (`22.ordinal`), and Roman numerals (`12.roman`).
- **🎨 Widget Modifiers:** Inline padding (`.all()`, `.symmetric()`), centering, flex layout (`.expanded()`, `.flexible()`), interactivity (`.onTap()`), opacity, rotation, and safe area wrapping.
- **🔤 String & Colors:** Fluent text styling (`'Title'.style(...)`), hex color parsing (`'#4A90E2'.toColor()`), and string capitalization (`capitalize()`, `capitalizeFirst()`).
- **⏱️ Duration & Delays:** Clean duration syntax (`5.seconds`, `300.milliseconds`, `2.minutes`) and non-blocking async delay helpers (`await 2.delay()`).
- **📅 DateTime & Relative Time:** User-friendly relative time (`date.timeAgo`), calendar day checks (`date.isToday`, `date.isYesterday`), and ISO-like date/time formatters.
- **📦 Collections & Iterables:** Null-safe search (`firstWhereOrNull`), indexed mapping (`mapIndexed`, `forEachIndexed`), and collection null-safety checks (`isNullOrEmpty`).
- **🔒 Form Validation & Input Formatters:** `SingleSpaceFormatter` for input fields and `InputFormatValidation` regex utilities.
- **🎬 Animations & Utilities:** `FadeInAni`, `BottomAnimation`, double-tap exit handling (`exitApp`), and console debug logging (`output`).

---

## 📦 Installation

Add `flutter_ex_kit` to your Flutter project:

```bash
flutter pub add flutter_ex_kit
```

Or add it directly to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_ex_kit: ^0.0.7
```

Import everything with a single line:

```dart
import 'package:flutter_ex_kit/flutter_ex_kit.dart';
```

---

## 📚 Complete Documentation & Guides

For full implementation details, complete API references, and interactive tutorials, please visit the official documentation:

👉 **[https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit](https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit)**

---

## 👨‍💻 Author

Developed by **Puneet Sharma**  
- **Website:** [puneetdev.in](https://puneetdev.in)  
- **Documentation:** [docs.puneetdev.in](https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit)  
- **GitHub:** [@iamapuneet](https://github.com/iamapuneet)  
- **Sponsor:** [GitHub Sponsors](https://github.com/sponsors/iamapuneet)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
