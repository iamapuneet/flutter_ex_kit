# DateTime & Relative Time Extensions Reference

`flutter_ex_kit` simplifies human-readable relative dates, day comparisons, and string date formatting.

---

## 1. Relative Time String (`timeAgo`)

Convert a `DateTime` instance into a user-friendly relative timestamp:

```dart
DateTime justNow = DateTime.now();
print(justNow.timeAgo); // 'Just now'

DateTime fiveMinutesAgo = DateTime.now().subtract(const Duration(minutes: 5));
print(fiveMinutesAgo.timeAgo); // '5 minutes ago'

DateTime twoHoursAgo = DateTime.now().subtract(const Duration(hours: 2));
print(twoHoursAgo.timeAgo); // '2 hours ago'

DateTime yesterday = DateTime.now().subtract(const Duration(days: 1));
print(yesterday.timeAgo); // 'Yesterday'

DateTime threeDaysAgo = DateTime.now().subtract(const Duration(days: 3));
print(threeDaysAgo.timeAgo); // '3 days ago'
```

---

## 2. Calendar Day Checks

Check whether a `DateTime` is today, yesterday, tomorrow, or matches another date:

```dart
DateTime date = DateTime.now();

// Day checks
bool isToday     = date.isToday;     // true
bool isYesterday = date.isYesterday; // false
bool isTomorrow  = date.isTomorrow;  // false

// Exact same calendar day comparison
DateTime other = DateTime(2026, 11, 24, 18, 0);
bool sameDay = date.isSameDay(other); // true
```

---

## 3. Date & Time String Formatting

Format dates to standard ISO-like strings without requiring the `intl` package:

```dart
DateTime now = DateTime(2026, 5, 4, 14, 30, 0);

// Formats to YYYY-MM-DD
print(now.toDateString); // '2026-05-04'

// Formats to HH:MM:SS
print(now.toTimeString); // '14:30:00'
```
