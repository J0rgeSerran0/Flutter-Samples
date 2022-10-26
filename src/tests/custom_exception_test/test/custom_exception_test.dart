import 'package:custom_exception_test/exceptions/customException.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:custom_exception_test/myClass.dart';

void main() {
  test('Creating a custom exception to manage it with an Unit Test', () {
    printRunning();

    // Arrange
    var myClass = MyClass();
    // Act [NA]
    // Assert
    expect(() => myClass.throwException(), throwsException);

    expect(
        () => myClass.throwException(), throwsA((x) => x is CustomException));

    expect(() => myClass.throwException(), throwsA(isA<CustomException>()));

    printFinishedCorrectly();
  });
}

void printRunning() {
  debugPrint('\t\x1B[33m\u2794 Test Running...\x1B[0m');
}

void printFinishedCorrectly() {
  debugPrint('\t\x1B[32m\u2713 Test Finished Correctly!\x1B[0m');
}
