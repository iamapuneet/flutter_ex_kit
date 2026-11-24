# Widget Extensions Reference

The widget extensions in `flutter_ex_kit` provide fluent wrappers for padding, alignment, sizing, layout, interactivity, and transformations.

---

## 1. Padding Modifiers

Wrap any widget in a `Padding` widget using chained methods:

```dart
// Uniform padding on all 4 sides
Text('Hello World').all(16.0);

// Symmetric vertical and horizontal padding
MyCard().symmetric(horizontal: 20.0, vertical: 10.0);

// Specific side padding
Icon(Icons.star).only(left: 8.0, top: 4.0);
```

---

## 2. Alignment & Centering

Align or center elements without manually nesting `Align` or `Center` widgets:

```dart
// Wrap in Center widget
Text('Centered Title').center();

// Align to top-left corner
Container(width: 50, height: 50, color: Colors.blue).alignTopLeft();

// Align to top-center with custom width constraints
MyAvatar().alignTopCenter(width: 120, height: 120);
```

### Supported Alignment Helpers:
- `.alignTopLeft()`
- `.alignTopCenter()`
- `.alignTopRight()`
- `.alignCenter()`
- `.alignBottomLeft()`
- `.alignBottomCenter()`
- `.alignBottomRight()`

---

## 3. Flex & Layout Helpers

Control flex expansion and loose fitting inside `Row`, `Column`, or `Flex`:

```dart
// Expanded with optional flex factor
MyContainer().expanded(flex: 2);

// Flexible with loose or tight fit
MyContainer().flexible(fit: FlexFit.loose);

// Safe area wrapping
MyScreenContent().safeArea(top: true, bottom: true);

// FittedBox with custom fit and alignment
Text('Long header text').fittedBox(fit: BoxFit.scaleDown);
```

---

## 4. Visibility, Opacity & Interactions

Handle tap events, conditional visibility, and opacity fluently:

```dart
// Tap event with InkWell and optional ripple border radius
MyCard().onTap(() {
  print('Card tapped!');
}, borderRadius: BorderRadius.circular(12));

// Opacity modifier
MyWidget().opacity(0.75);

// Conditional visibility
MyButton().visibility(
  visible: isSubmitAllowed,
  replacement: const CircularProgressIndicator(),
);
```

---

## 5. Nullable Widget Safety (`shrink`)

Safely handle nullable widget parameters without ternary checks:

```dart
Widget? optionalLeadingWidget;

// If null, renders SizedBox.shrink() safely
optionalLeadingWidget.shrink();
```

---

## 6. Transformations

Rotate or transform widgets inline:

```dart
// Rotate widget by radians
Icon(Icons.arrow_forward).rotate(angle: 3.14 / 2); // 90 degrees
```
