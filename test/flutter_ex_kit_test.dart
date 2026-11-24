import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ex_kit/flutter_ex_kit.dart';

void main() {
  group('Int Extensions', () {
    test('Ordinal conversion works correctly', () {
      expect(1.ordinal, '1st');
      expect(2.ordinal, '2nd');
      expect(3.ordinal, '3rd');
      expect(4.ordinal, '4th');
      expect(11.ordinal, '11th');
      expect(12.ordinal, '12th');
      expect(13.ordinal, '13th');
      expect(21.ordinal, '21st');
      expect(22.ordinal, '22nd');
    });

    test('Roman numeral conversion works correctly', () {
      expect(1.roman, 'I');
      expect(4.roman, 'IV');
      expect(9.roman, 'IX');
      expect(12.roman, 'XII');
      expect(455.roman, 'CDLV');
      expect(3999.roman, 'MMMCMXCIX');
    });

    test('Pad extensions create SizedBox with correct dimensions', () {
      final heightBox = 16.height;
      final widthBox = 24.width;

      expect(heightBox.height, 16.0);
      expect(widthBox.width, 24.0);
    });
  });

  group('Duration Extensions', () {
    test('Num duration helpers create correct Durations', () {
      expect(5.seconds, const Duration(seconds: 5));
      expect(500.milliseconds, const Duration(milliseconds: 500));
      expect(2.minutes, const Duration(minutes: 2));
      expect(1.hours, const Duration(hours: 1));
      expect(3.days, const Duration(days: 3));
    });
  });

  group('String Extensions', () {
    test('capitalize and capitalizeFirst work properly', () {
      expect('hello world'.capitalize(), 'Hello World');
      expect('hello world'.capitalizeFirst(), 'Hello world');
    });

    test('isBool and boolean checks', () {
      expect('true'.isBool(), isTrue);
      expect('false'.isBool(), isTrue);
      expect('random'.isBool(), isFalse);
    });

    test('toColor parses valid hex codes', () {
      expect('#FF0000'.toColor(), const Color(0xFFFF0000));
      expect('00FF00'.toColor(), const Color(0xFF00FF00));
      expect('invalid'.toColor(), Colors.black);
    });
  });

  group('Iterable Extensions', () {
    test('firstWhereOrNull returns match or null', () {
      final list = [1, 2, 3, 4, 5];
      expect(list.firstWhereOrNull((e) => e > 3), 4);
      expect(list.firstWhereOrNull((e) => e > 10), isNull);
    });

    test('isNullOrEmpty and isNotNullOrEmpty', () {
      const List<int>? nullList = null;
      const emptyList = <int>[];
      final fullList = [1, 2];

      expect(nullList.isNullOrEmpty, isTrue);
      expect(emptyList.isNullOrEmpty, isTrue);
      expect(fullList.isNullOrEmpty, isFalse);

      expect(nullList.isNotNullOrEmpty, isFalse);
      expect(emptyList.isNotNullOrEmpty, isFalse);
      expect(fullList.isNotNullOrEmpty, isTrue);
    });

    test('mapIndexed provides index and element', () {
      final items = ['a', 'b', 'c'];
      final indexed = items.mapIndexed((i, e) => '$i:$e').toList();
      expect(indexed, ['0:a', '1:b', '2:c']);
    });
  });

  group('DateTime Extensions', () {
    test('isToday checks current day', () {
      final now = DateTime.now();
      expect(now.isToday, isTrue);
      expect(now.subtract(const Duration(days: 2)).isToday, isFalse);
    });

    test('toDateString formats YYYY-MM-DD', () {
      final date = DateTime(2026, 5, 4);
      expect(date.toDateString, '2026-05-04');
    });
  });

  group('Validation Rules', () {
    test('SingleSpaceFormatter prevents consecutive spaces', () {
      final formatter = SingleSpaceFormatter();
      const oldValue = TextEditingValue(text: 'Hello ');
      const newValue = TextEditingValue(text: 'Hello  ');

      final result = formatter.formatEditUpdate(oldValue, newValue);
      expect(result.text, 'Hello ');
    });
  });
}
