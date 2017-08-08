@TestOn('browser')

import 'package:test/test.dart';

import 'package:test_dartium_breakpoint_skip/my_math.dart';

void main() {
  test('add', () {
    final int x = 2;
    final int y = 3;

    final sum = add(x, y);

    expect(sum, 5);
  });

  test('multiply', () {
    final int x = 2;
    final int y = 3;

    final product = multiply(x, y);

    expect(product, 6);
  });

  test('subtract', () {
    final int x = 2;
    final int y = 3;

    final difference = subtract(x, y);

    expect(difference, -1);
  });
}
