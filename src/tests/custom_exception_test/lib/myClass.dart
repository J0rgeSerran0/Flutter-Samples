import 'exceptions/customException.dart';

class MyClass {
  void throwException() {
    throw CustomException('This is my first custom exception');
  }
}
