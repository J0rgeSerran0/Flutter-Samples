# Flutter-Samples
Quick Flutter resources and samples

1. Create the flutter project `flutter create <name>`
2. Overwrite the `lib` folder with the sample code

## Visual Studio Code
I use [`Visual Studio Code`](https://code.visualstudio.com/) as editor code

The extensions I use are:
- [`Awesome Flutter Snippets`](https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets)
- [`Dart`](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)
- [`Flutter`](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [`Material Icon Theme`](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

## [Samples](src/README.md)
![#A30204](https://via.placeholder.com/10x10/F28082/000000.png?text=+) All samples tested with Flutter v3

- `Alert Dialog Box`
- `Animated Builder`
- `Bottom Navigation Bar`
- `Button Multiple Toggle Switch`
- `Button Toggle Switch`
- `Circular Loading Indicator`
- `Combo Box`
- `Date Picker`
- `Dialog Box with 2 buttons`
- `Dialog Box with 3 buttons`
- `Form Dialog Box`
- `Horizotal Toolbar`
- `Icon Text`
- `Linear Loading Indicator`
- `ListTile with Rounded Borders`
- `Rating`
- `Rounded Bottom Navigation Bar`
- `Switch Button`
- `Switch Cover Button`
- `Text Field Search Box`

## Very simple sample
> This is a very simple sample of a Flutter app, in a black screen. You can use it as a canvas of a blank app

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPageApp(),
    );
  }
}

class MyPageApp extends StatefulWidget {
  const MyPageApp({Key? key}) : super(key: key);

  @override
  State<MyPageApp> createState() => MyPageAppState();
}

class MyPageAppState extends State<MyPageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text(
            'demo',
            style: TextStyle(
                color: Colors.pink, fontSize: 48, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
```
