# Welcome to the flutter_ex_kit Wiki

Welcome to the official documentation and in-depth reference manual for **`flutter_ex_kit`**!

`flutter_ex_kit` is a modular, high-performance Flutter extension suite designed to eliminate boilerplate code, accelerate UI development, and provide essential utilities across layout, navigation, strings, numbers, dates, collections, animations, and input validation.

---

## 🧭 Wiki Directory & Guides

Use the table below or the persistent sidebar to navigate the in-depth documentation:

| Topic | Description |
| :--- | :--- |
| **[🚀 Getting Started](Getting-Started)** | Installation, package requirements, setup, and first steps |
| **[📱 BuildContext Extensions](BuildContext-Extensions)** | Screen dimensions, dark mode, theme data, navigation, and snackbars |
| **[🎨 Widget Extensions](Widget-Extensions)** | Fluent padding, alignment, expanded, opacity, onTap, and visibility |
| **[📏 Number & Duration](Number-and-Duration-Extensions)** | SizedBox spacing (`.height`, `.width`), ordinals, Roman numerals, and `.delay()` |
| **[🔤 String & Text](String-and-Text-Extensions)** | Text styling, hex colors (`.toColor()`), capitalization, and booleans |
| **[📅 DateTime & Relative Time](DateTime-Extensions)** | Relative formatting (`.timeAgo`), day checks (`.isToday`), and date formatting |
| **[📦 Collections & Iterables](Collections-and-Iterables)** | Functional operators: `.firstWhereOrNull()`, `.mapIndexed()`, null-safety |
| **[🔒 Validation & Formatters](Validation-and-Formatters)** | `SingleSpaceFormatter` and regex input filters |
| **[🎬 Animations & Utilities](Animations-and-Utilities)** | `FadeInAni`, `BottomAnimation`, debug logger (`output`), and double-tap exit |

---

## 💡 Core Philosophy

1. **Zero Boilerplate:** Why write `Padding(padding: EdgeInsets.all(16), child: ...)` when you can write `child.all(16)`?
2. **Context-Aware Convenience:** Direct access to screen metrics and theme state through `context.width`, `context.isDarkMode`, and `context.push(page)`.
3. **Type-Safe & Null-Safe:** Designed for Dart 3 with sound null safety and defensive bounds checks.
4. **Lightweight & Dependency-Free:** Zero third-party runtime package dependencies beyond the core Flutter framework.

---

## 📦 Package Status & Metadata

- **Current Stable Version:** `0.0.6`
- **Supported Flutter SDK:** `>=1.17.0`
- **Supported Dart SDK:** `>=3.5.3 <4.0.0`
- **License:** MIT License
- **Pub.dev Package:** [pub.dev/packages/flutter_ex_kit](https://pub.dev/packages/flutter_ex_kit)
- **GitHub Repository:** [github.com/iamapuneet/flutter_ex_kit](https://github.com/iamapuneet/flutter_ex_kit)
