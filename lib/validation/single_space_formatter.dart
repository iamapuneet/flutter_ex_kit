import 'package:flutter/services.dart';

/// A custom [TextInputFormatter] that prevents consecutive spaces
/// and ensures that only a single space is allowed between words.
///
/// This formatter is stateless and safe against copy-pasting multi-space text
/// as well as cursor repositioning.
class SingleSpaceFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // If the input is just a leading space, reject it
    if (newValue.text == ' ') {
      return oldValue;
    }

    var sanitized = newValue.text;

    // Disallow leading spaces
    if (sanitized.startsWith(' ')) {
      sanitized = sanitized.trimLeft();
    }

    // Collapse multiple consecutive spaces into a single space
    sanitized = sanitized.replaceAll(RegExp(r' {2,}'), ' ');

    if (sanitized == newValue.text) {
      return newValue;
    }

    // Preserve cursor position relative to the sanitized text
    final lengthDiff = newValue.text.length - sanitized.length;
    final newOffset =
        (newValue.selection.end - lengthDiff).clamp(0, sanitized.length);

    return TextEditingValue(
      text: sanitized,
      selection: TextSelection.collapsed(offset: newOffset),
    );
  }
}
