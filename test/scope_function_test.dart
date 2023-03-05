import 'package:scope_function/scope_function.dart';
import 'package:test/test.dart';

class ScopeIt {}

void main() {
  final ScopeIt scopeIt = ScopeIt();

  group('scope also', () {
    test('return this', () {
      identical(scopeIt.also((it) {}), scopeIt);
    });

    test('throw what block throw', () {
      expect(() => scopeIt.also((it) => throw "Exception"), throwsA("Exception"));
    });
  });

  group('scope let', () {
    test('return what we return in block', () {
      expect(scopeIt.let((it) => 99), 99);
    });

    test('throw what block throw', () {
      expect(() => scopeIt.let((it) => throw "Exception"), throwsA("Exception"));
    });
  });

  group('scope takeIf', () {
    test('return this if predicated true', () {
      expect(scopeIt.takeIf((it) => true), scopeIt);
    });

    test('return null if predicated false', () {
      expect(scopeIt.takeIf((it) => false), null);
    });

    test('throw what predicated throw', () {
      expect(() => scopeIt.takeIf((it) => throw "Exception"), throwsA("Exception"));
    });
  });

  group('scope takeUnless', () {
    test('return null if predicated true', () {
      expect(scopeIt.takeUnless((it) => true), null);
    });

    test('return this if predicated false', () {
      expect(scopeIt.takeUnless((it) => false), scopeIt);
    });

    test('throw what predicated throw', () {
      expect(() => scopeIt.takeUnless((it) => throw "Exception"), throwsA("Exception"));
    });
  });

  group('scope run', () {
    test('return what we return in block', () {
      expect(scopeIt.run((it) => 99), 99);
    });

    test('throw what block throw', () {
      expect(() => scopeIt.run((it) => throw "Exception"), throwsA("Exception"));
    });
  });

  group('withThe', () {
    test('return what we return in block', () {
      expect(withThe(scopeIt, (it) => 99), 99);
    });

    test('throw what block throw', () {
      expect(() => withThe(scopeIt, (it) => throw "Exception"), throwsA("Exception"));
    });
  });
}
