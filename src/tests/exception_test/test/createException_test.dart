import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:exception_test/createException.dart';

void main() {
  test('Creating an exception to manage it with an Unit Test', () {
    printRunning();

    // Arrange
    var createException = CreateException();
    // Act [NA]
    // Assert
    expect(() => createException.executeAction(), throwsException);

    expect(
        () => createException.executeAction(), throwsA((x) => x is Exception));

    expect(() => createException.executeAction(), throwsA(isA<Exception>()));

    printFinishedCorrectly();
  });
}

void printRunning() {
  debugPrint('\t\x1B[33m\u2794 Test Running...\x1B[0m');
}

void printFinishedCorrectly() {
  debugPrint('\t\x1B[32m\u2713 Test Finished Correctly!\x1B[0m');
}
