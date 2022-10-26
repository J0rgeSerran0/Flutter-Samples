import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:function_test/sum.dart';

void main() {
  late Sum sum;

  // This is an initialization method for tests,
  // and is executed before all tests
  setUpAll(() {
    // Here, the object does not hold a state, so is not
    // a bad practice use a common instance for all tests
    sum = Sum();
  });

  group('\x1B[31m\u25C9 Sum Test\x1B[36m', () {
    test('Two positive values should return a positive value', () {
      printRunning();

      // Arrange
      var expected = 3;
      // Act
      var actual = sum.calculate(1, 2);
      // Assert
      expect(actual, expected);

      printFinishedCorrectly();
    });

    test(
        'One negative value greaten than the positive one, should return a negative value',
        () {
      printRunning();

      // Arrange
      var expected = -1;
      // Act
      final actual = sum.calculate(2, -3);
      // Assert
      expect(actual, expected);

      printFinishedCorrectly();
    });
  });
}

void printRunning() {
  debugPrint('\t\x1B[33m\u2794 Test Running...\x1B[0m');
}

void printFinishedCorrectly() {
  debugPrint('\t\x1B[32m\u2713 Test Finished Correctly!\x1B[0m');
}
