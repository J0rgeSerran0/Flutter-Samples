# Start here!
- [`Get Started - Install`](https://docs.flutter.dev/get-started/install)

## Visual Studio Code
I use [`Visual Studio Code`](https://code.visualstudio.com/) as editor code

The extensions I use are:
- [`Awesome Flutter Snippets`](https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets)
- [`Dart`](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)
- [`Flutter`](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [`Material Icon Theme`](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

## Sharing and Testing the Code
- To test the samples online, I am using [DartPad](https://dartpad.dev). There is a [Sharing Guide](https://github.com/dart-lang/dart-pad/wiki/Sharing-Guide) with details about how to share your samples and code online for other people

## Guides and Learning Paths
- [A tour of the Dart language](https://dart.dev/guides/language/language-tour)

---

# Flutter-Samples
Quick Flutter resources and samples

1. Create the flutter project `flutter create <name>`
2. Overwrite the `lib` folder with the sample code

## [Samples](src/README.md)
![#A30204](https://via.placeholder.com/10x10/F28082/000000.png?text=+) All samples tested with [**Flutter 3**](Flutter_3.md)

- `Alert Dialog Box`
- `Animated Builder`
- `Animated Cross Fade`
- `Animated Default Text Style`
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


---

## Quick Templates

### Template without AppBar
> This is a template of a Flutter app with a black screen. You can use it as a canvas of a blank app

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

### Template with AppBar
> This is a template of a Flutter app with an App Bar. You can use it as a canvas of a blank app

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(97, 60, 90, 200),
        foregroundColor: Colors.white70,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'demo',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 48,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
```
