import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    print("setup");
  });

  test('test', () {
    const isUserLogin = true;

    expect(isUserLogin, isTrue);
  });

  group('group test', () {
    test('test', () {
      const isUserLogin = true;

      expect(isUserLogin, isTrue);
    });
    test('test', () {
      const isUserLogin = true;

      expect(isUserLogin, isTrue);
    });
    test('test', () {
      const isUserLogin = true;

      expect(isUserLogin, isTrue);
    });
    test('test', () {
      const isUserLogin = true;

      expect(isUserLogin, isTrue);
    });
  });
}
