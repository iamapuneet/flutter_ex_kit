/// Extensions on [Iterable] to provide convenient functional utilities.
extension IterableExtensions<T> on Iterable<T> {
  /// Returns the first element matching [test], or `null` if none found.
  T? firstWhereOrNull(bool Function(T element) test) {
    for (final element in this) {
      if (test(element)) return element;
    }
    return null;
  }

  /// Returns the last element matching [test], or `null` if none found.
  T? lastWhereOrNull(bool Function(T element) test) {
    T? result;
    for (final element in this) {
      if (test(element)) {
        result = element;
      }
    }
    return result;
  }

  /// Iterates through elements with their respective indices.
  void forEachIndexed(void Function(int index, T element) action) {
    var index = 0;
    for (final element in this) {
      action(index++, element);
    }
  }

  /// Maps elements with their indices to a new [Iterable].
  Iterable<R> mapIndexed<R>(R Function(int index, T element) transform) sync* {
    var index = 0;
    for (final element in this) {
      yield transform(index++, element);
    }
  }
}

/// Extensions on nullable [Iterable] for safe null checks.
extension NullableIterableExtensions<T> on Iterable<T>? {
  /// Returns `true` if this iterable is `null` or empty.
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Returns `true` if this iterable is not `null` and not empty.
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}
