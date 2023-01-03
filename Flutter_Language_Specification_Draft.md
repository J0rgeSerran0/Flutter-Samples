# **Flutter Language Specification Draft**

- [`App Widget`](#app_widget)
- [`Started Point of the app`](#started_point)
- [`Widgets`](#widgets)

---

## <a name="app_widget"></a>**App Widget**
In Flutter, the app widget holds your root page. Remember that in Flutter, everything is a [`widget`](#widgets)

You can use a [`MaterialApp widget`](https://api.flutter.dev/flutter/material/MaterialApp-class.html), a [`CupertinoApp widget`](https://api.flutter.dev/flutter/cupertino/CupertinoApp-class.html), which supports an iOS-style app, or a [`WidgetsApp widget`](https://api.flutter.dev/flutter/widgets/WidgetsApp-class.html), that is a lower level class, which you can customize

The next sample shows you the use of `MaterialApp widget`, which holds its root page in the *`home`* property

```dart
class MyApp extends StatelessWidget {
  /// This widget is the root of your application.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
```


## <a name="started_point"></a>**Started Point of the app**
In Flutter, the default started or entry point is `main`, and is the point where your Flutter app is loaded

```dart
void main() {
  runApp(const MyApp());
}
```

## <a name="widgets"></a>**Widgets**
In Flutter, everything is a `widget`

The app itself, is a `widget` too

An app with a simple `widget` is:

```dart
class MyApp extends StatelessWidget {
  /// This widget is the root of your app
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello World!',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
```

