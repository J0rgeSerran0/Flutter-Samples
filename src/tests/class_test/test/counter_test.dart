import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:class_test/counter.dart';

void main() {
  group('\x1B[31m\u25C9 Counter Test\x1B[36m', () {
    test('Initial value must be 0', () {
      printRunning();

      // Arrange
      var expected = 0;
      // Act
      var actual = Counter().value;
      // Assert
      expect(actual, expected);

      printFinishedCorrectly();
    });

    test('The value must be incremented correctly', () {
      printRunning();

      // Arrange
      var expected = 1;
      final actual = Counter();
      // Act
      actual.increment();
      // Assert
      expect(actual.value, expected);

      printFinishedCorrectly();
    });

    test('The value must be decremented correctly', () {
      printRunning();

      // Arrange
      var expected = -1;
      final actual = Counter();
      // Act
      actual.decrement();
      // Assert
      expect(actual.value, expected);

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
