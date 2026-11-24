<div align="center">

<img src="https://raw.githubusercontent.com/iamapuneet/flutter_ex_kit/master/screenshots/logo.png" alt="flutter_ex_kit Logo" width="130"/>

# 🚀 flutter_ex_kit

### *The Ultimate Flutter Productivity & Extension Suite*

[![pub package](https://img.shields.io/pub/v/flutter_ex_kit.svg?color=0175C2&style=for-the-badge)](https://pub.dev/packages/flutter_ex_kit)
[![pub points](https://img.shields.io/pub/points/flutter_ex_kit?color=2E8B57&style=for-the-badge)](https://pub.dev/packages/flutter_ex_kit/score)
[![pub likes](https://img.shields.io/pub/likes/flutter_ex_kit?color=FF4081&style=for-the-badge)](https://pub.dev/packages/flutter_ex_kit)
[![License: MIT](https://img.shields.io/badge/License-MIT-purple.svg?style=for-the-badge)](LICENSE)

<br/>

[![Platform: Flutter](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20macOS%20%7C%20Windows%20%7C%20Linux-02569B.svg?style=flat-square)](https://pub.dev/packages/flutter_ex_kit)
[![Sponsor Author](https://img.shields.io/badge/Sponsor-%E2%9D%A4-ea4aaa.svg?style=flat-square)](https://github.com/sponsors/iamapuneet)
[![GitHub stars](https://img.shields.io/github/stars/iamapuneet/flutter_ex_kit.svg?style=social)](https://github.com/iamapuneet/flutter_ex_kit)

<p align="center">
  <b>Write cleaner, faster, and more readable Flutter code with zero boilerplate.</b><br/>
  An expressive, lightweight extension toolkit covering <b>BuildContext</b>, <b>Widgets</b>, <b>Spacing</b>, <b>Navigation</b>, <b>Strings</b>, <b>Dates</b>, and <b>Responsive UI</b>.
</p>

---

### 🌐 Quick Navigation & Links

[**🌐 Main Website**](https://puneetdev.in) &nbsp;•&nbsp;
[**📖 Full Documentation**](https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit) &nbsp;•&nbsp;
[**📦 pub.dev Package**](https://pub.dev/packages/flutter_ex_kit) &nbsp;•&nbsp;
[**💡 Report Issue**](https://github.com/iamapuneet/flutter_ex_kit/issues) &nbsp;•&nbsp;
[**💖 Sponsor**](https://github.com/sponsors/iamapuneet)

</div>

<br/>

> [!TIP]
> ### 📖 In-Depth Official Documentation
> **Comprehensive API references, interactive examples, and tutorials are available at:**  
> 👉 **[https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit](https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit)**  
> *(Detailed method guides, copy-paste snippets, and advanced recipes are continuously updated there).*

---

## ⚡ Why flutter_ex_kit?

Flutter UI code often suffers from deeply nested widget trees, redundant constructors, and repetitive syntax. **`flutter_ex_kit`** transforms verbose code into fluent, readable one-liners:

| Traditional Flutter Verbosity | With `flutter_ex_kit` Clean Syntax |
| :--- | :--- |
| `SizedBox(height: 16)` | `16.height` |
| `Padding(padding: EdgeInsets.all(12), child: widget)` | `widget.all(12)` |
| `MediaQuery.of(context).size.width` | `context.width` |
| `Theme.of(context).brightness == Brightness.dark` | `context.isDarkMode` |
| `Navigator.of(context).push(MaterialPageRoute(...))` | `context.push(MyScreen())` |
| `Color(int.parse("FF4A90E2", radix: 16))` | `'#4A90E2'.toColor()` |
| `Future.delayed(Duration(seconds: 2))` | `await 2.delay()` |
| `date.difference(DateTime.now()).inDays...` | `date.timeAgo` |
| `items.firstWhere((e) => ..., orElse: () => null)` | `items.firstWhereOrNull((e) => ...)` |

---

## ✨ Features at a Glance

<table>
  <tr>
    <td width="50%">
      <b>📱 BuildContext Extensions</b><br/>
      Immediate access to <code>context.width</code>, <code>context.height</code>, <code>context.theme</code>, <code>context.isDarkMode</code>, <code>context.push()</code>, <code>context.pop()</code>, and snackbars.
    </td>
    <td width="50%">
      <b>📏 Spacing & Number Helpers</b><br/>
      Generate sized boxes on the fly with <code>16.height</code> and <code>24.width</code>. English ordinals (<code>22.ordinal</code>) and Roman numerals (<code>12.roman</code>).
    </td>
  </tr>
  <tr>
    <td width="50%">
      <b>🎨 Widget Layout & Modifiers</b><br/>
      Fluent inline chaining: <code>.all()</code>, <code>.symmetric()</code>, <code>.expanded()</code>, <code>.flexible()</code>, <code>.onTap()</code>, <code>.safeArea()</code>, and <code>.center()</code>.
    </td>
    <td width="50%">
      <b>🔤 String & Color Utilities</b><br/>
      Fluent text styling (<code>'Hello'.style(...)</code>), hex color parser (<code>'#4A90E2'.toColor()</code>), and casing transforms (<code>capitalize()</code>).
    </td>
  </tr>
  <tr>
    <td width="50%">
      <b>⏱️ Duration & Async Delays</b><br/>
      Readable time durations: <code>5.seconds</code>, <code>300.milliseconds</code>, <code>2.minutes</code>, and async sleep via <code>await 2.delay()</code>.
    </td>
    <td width="50%">
      <b>📅 DateTime & Relative Time</b><br/>
      Social-media style relative time (<code>date.timeAgo</code>), day status checks (<code>isToday</code>, <code>isYesterday</code>), and formatted dates.
    </td>
  </tr>
  <tr>
    <td width="50%">
      <b>📦 Collections & Iterables</b><br/>
      Null-safe search (<code>firstWhereOrNull</code>), indexed mapping (<code>mapIndexed</code>, <code>forEachIndexed</code>), and <code>isNullOrEmpty</code> checks.
    </td>
    <td width="50%">
      <b>🔒 Input Validation & Animations</b><br/>
      Stateless <code>SingleSpaceFormatter</code> for text fields, regex validators, <code>FadeInAnimation</code>, and double-tap exit helpers.
    </td>
  </tr>
</table>

---

## 📦 Getting Started

### 1. Add Dependency

Add `flutter_ex_kit` to your `pubspec.yaml`:

```bash
flutter pub add flutter_ex_kit
```

Or declare it manually:

```yaml
dependencies:
  flutter_ex_kit: ^0.0.8
```

### 2. Import Package

Import everything with a single line:

```dart
import 'package:flutter_ex_kit/flutter_ex_kit.dart';
```

### 3. Quick Code Preview

```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          16.height, // Quick SizedBox spacing
          'Welcome to flutter_ex_kit'.style(
            size: 20,
            bold: true,
            color: '#1E88E5'.toColor(),
          ),
          8.height,
          ElevatedButton(
            onPressed: () => context.push(const DetailScreen()),
            child: const Text('Go to Details'),
          ).expanded(), // Quick layout modifier
        ],
      ).all(16), // Quick padding modifier
    );
  }
}
```

---

## 📚 Official In-Depth Documentation

Need detailed API references, advanced recipes, and full tutorials? Everything is thoroughly documented on the official documentation portal:

<div align="center">

[![Documentation Portal](https://img.shields.io/badge/Open%20Documentation-docs.puneetdev.in-0175C2?style=for-the-badge&logo=google-chrome&logoColor=white)](https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit)

**👉 [https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit](https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit)**

</div>

---

## 👨‍💻 Author & Connect

Crafted with ❤️ by **Puneet Sharma**

- 🌐 **Personal Website:** [puneetdev.in](https://puneetdev.in)
- 📖 **Documentation Hub:** [docs.puneetdev.in](https://docs.puneetdev.in/flutter/dependencies/flutter_ex_kit)
- 🐙 **GitHub:** [@iamapuneet](https://github.com/iamapuneet)
- 💖 **Support / Sponsor:** [Sponsor on GitHub](https://github.com/sponsors/iamapuneet)

---

## 📄 License

This package is licensed under the [MIT License](LICENSE).
