extension ScopeFunction<T extends Object?, R extends Object?> on T {
  /// Calls the specified function [block] with this value as its argument and returns this value.
  T also(void Function(T it) block) {
    block(this);
    return this;
  }

  /// Calls the specified function [block] with this value as its argument and returns its result.
  R let(R Function(T it) block) {
    return block(this);
  }

  /// Returns this value if it satisfies the given [predicate] or null, if it doesn't.
  T? takeIf(bool Function(T it) predicate) {
    return predicate(this) ? this : null;
  }

  /// Returns this value if it does not satisfy the given [predicate] or null, if it does.
  T? takeUnless(bool Function(T it) predicate) {
    return !predicate(this) ? this : null;
  }

  /// Calls the specified function [block] with this value as its argument and returns its result.
  /// Since Receiver not supported in Dart, you need call the argument object using dot notation.
  /// Although this function exactly the same as the [let] function，we still implement it for better semantic reading.
  R run(R Function(T it) block) {
    return block(this);
  }
}

/// Calls the specified function [block] with the given [it] as its argument and returns its result.
/// Since Receiver not supported in Dart, you need call the argument object using dot notation.
/// Although this function works same as the [run] function，we still implement it for better semantic reading.
R withThe<T, R>(T it, R Function(T it) block) {
  return block(it);
}
