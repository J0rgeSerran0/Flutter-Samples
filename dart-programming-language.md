# Dart - Programming Language

## **Collections**

### List
*Array*, arreglo o matriz. Se trata de un grupo de objetos ordenados

```dart
  final numbers = [1, 2, 3, 6, 6, 9];
  print('List: ${numbers}');
  print('First: ${numbers.first}');
  print('Index 0: ${numbers[0]}');
```

```
Output:
  List: [1, 2, 3, 6, 6, 9]
  First: 1
  Index 0: 1
```

### Sets
Conjuntos de datos `únicos` desordenados

```dart
  final numbers = {1, 2, 3, 6, 6, 9};
  print('Set: ${numbers}');
  print('First: ${numbers.first}');
  print('Numbers: ${numbers}');
  numbers.add(3);
  print('Numbers: ${numbers}');
```

```
Output:
  Set: {1, 2, 3, 6, 9}
  First: 1
  Numbers: {1, 2, 3, 6, 9}
  Numbers: {1, 2, 3, 6, 9}
```

### Maps
Objeto que asocia un par de datos *clave, valor* (*key, value*)

```dart
  final numbers = {
    1: 'first'  ,
    2: 'second',
    3: 'third'
  };
  print('Map: ${numbers}');
  print('Value for key 1: ${numbers[1]}');
```

```
Output:
  Map: {1: first, 2: second, 3: third}
  Value for key 1: first
```

