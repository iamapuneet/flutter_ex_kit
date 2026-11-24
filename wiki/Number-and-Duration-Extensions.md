# Number & Duration Extensions Reference

`flutter_ex_kit` simplifies layout spacing, number conversions, duration construction, and asynchronous delays.

---

## 1. SizedBox Spacing Helpers

Generate vertical and horizontal `SizedBox` spacing widgets directly from numbers (`num`):

```dart
// Height spacing (Vertical)
10.height; // SizedBox(height: 10.0)
16.height; // SizedBox(height: 16.0)
24.height; // SizedBox(height: 24.0)

// Width spacing (Horizontal)
8.width;   // SizedBox(width: 8.0)
16.width;  // SizedBox(width: 16.0)
```

### Typical Usage in Columns & Rows:
```dart
Column(
  children: [
    const Text('First Item'),
    12.height, // clean spacing
    const Text('Second Item'),
    24.height,
    Row(
      children: [
        const Icon(Icons.star),
        8.width, // clean spacing
        const Text('4.9 Rating'),
      ],
    ),
  ],
);
```

---

## 2. Ordinal Number Representation

Convert an integer to its English ordinal string representation:

```dart
print(1.ordinal);   // '1st'
print(2.ordinal);   // '2nd'
print(3.ordinal);   // '3rd'
print(4.ordinal);   // '4th'
print(11.ordinal);  // '11th'
print(12.ordinal);  // '12th'
print(21.ordinal);  // '21st'
print(22.ordinal);  // '22nd'
print(143.ordinal); // '143rd'
```

---

## 3. Roman Numeral Conversions

Convert an integer (from 1 to 3999) to its standard Roman numeral string:

```dart
print(1.roman);    // 'I'
print(4.roman);    // 'IV'
print(9.roman);    // 'IX'
print(12.roman);   // 'XII'
print(455.roman);  // 'CDLV'
print(1984.roman); // 'MCMLXXXIV'
print(3999.roman); // 'MMMCMXCIX'
```

---

## 4. Duration Constructors

Construct `Duration` objects without typing `Duration(seconds: ...)`:

```dart
Duration timeout  = 5.seconds;
Duration anim     = 300.milliseconds;
Duration cooldown = 2.minutes;
Duration refresh  = 1.hours;
Duration retention= 7.days;
Duration precise  = 500.microseconds;
```

---

## 5. Async Delays (`delay`)

Wait for a duration or run a callback after a delay without boilerplate `Future.delayed`:

```dart
// Wait for 2 seconds
await 2.delay();

// Wait and execute a callback
await 3.delay(() {
  print('Executed after 3 seconds');
});

// Millisecond delay
await 500.delayMs(() {
  print('Executed after 500ms');
});
```
