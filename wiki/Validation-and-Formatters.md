# Validation & Text Formatters Reference

`flutter_ex_kit` provides text input formatters and regular expression validation utilities for form inputs.

---

## 1. SingleSpaceFormatter

A stateless `TextInputFormatter` that prevents users from entering multiple consecutive spaces or leading spaces into `TextField` or `TextFormField`:

```dart
TextField(
  decoration: const InputDecoration(
    labelText: 'Full Name',
    hintText: 'Enter your first and last name',
  ),
  inputFormatters: [
    SingleSpaceFormatter(),
  ],
);
```

### Key Behaviors:
- Disallows leading spaces (e.g. `' John'` -> `'John'`).
- Collapses multi-space inputs (e.g. `'John    Doe'` -> `'John Doe'`).
- Preserves accurate cursor position during editing or pasting.

---

## 2. InputFormatValidation Mixin

A set of static regular expression patterns for input validation:

```dart
class MyFormValidator with InputFormatValidation {
  // Validate digits only
  static bool isValidNumber(String input) {
    return InputFormatValidation.onlyNumberAllow.hasMatch(input);
  }

  // Validate letters only
  static bool isValidText(String input) {
    return InputFormatValidation.onlyTextAllow.hasMatch(input);
  }

  // Validate email address
  static bool isValidEmail(String input) {
    return InputFormatValidation.onlyEmailAllow.hasMatch(input);
  }
}
```

### Available Validators:
- `InputFormatValidation.onlyNumberAllow`: Matches numbers only (`0-9`).
- `InputFormatValidation.onlyTextAllow`: Matches alphabetic text only (`a-z`, `A-Z`).
- `InputFormatValidation.onlyEmailAllow`: Standard email address validation pattern.
- `InputFormatValidation.emojiNoAllowRegExp`: Comprehensive emoji filter pattern.
