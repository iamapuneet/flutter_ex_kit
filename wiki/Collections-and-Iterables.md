# Collections & Iterables Reference

`flutter_ex_kit` provides functional extensions on Dart `Iterable` and `List` collections to handle null-safety and indexing.

---

## 1. Safe Element Search (`firstWhereOrNull` / `lastWhereOrNull`)

Search collections without throwing `StateError: Bad state: No element`:

```dart
final users = [
  {'id': 1, 'name': 'Alice'},
  {'id': 2, 'name': 'Bob'},
];

// Returns match or null if not found
final user = users.firstWhereOrNull((u) => u['id'] == 3);
print(user); // null (no crash!)

// Find last matching element
final numbers = [1, 2, 3, 4, 5, 6];
final lastEven = numbers.lastWhereOrNull((n) => n.isEven); // 6
```

---

## 2. Indexed Operations (`mapIndexed` & `forEachIndexed`)

Access both the index and the element during transformation or iteration:

```dart
final fruits = ['Apple', 'Banana', 'Orange'];

// Map with index
List<String> numbered = fruits.mapIndexed((index, fruit) {
  return '${index + 1}. $fruit';
}).toList();
// ['1. Apple', '2. Banana', '3. Orange']

// For-each with index
fruits.forEachIndexed((index, fruit) {
  print('Index $index: $fruit');
});
```

---

## 3. Null-Safe Collection Checks

Check whether a nullable collection is empty without defensive `list != null && list.isNotEmpty`:

```dart
List<String>? emptyList;
List<String>? fullList = ['Alpha', 'Beta'];

// Check isNullOrEmpty
print(emptyList.isNullOrEmpty); // true
print(fullList.isNullOrEmpty);  // false

// Check isNotNullOrEmpty
print(emptyList.isNotNullOrEmpty); // false
print(fullList.isNotNullOrEmpty);  // true
```
