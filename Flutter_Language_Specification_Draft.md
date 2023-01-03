# **Flutter Language Specification Draft**

- [`App Widget`](#app_widget)
- [`Pages, Screens and Routes`](#pages_screens_routes)
- [`Started Point of the app`](#started_point)
- [`Stateful widget`](#stateful_widget)
- [`UI Immutability`](#ui_immutability)
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


## <a name="pages_screens_routes"></a>**Pages, Screens and Routes**
In Flutter, a *Page* or *Screen* is called `Route`
* In *Android*, these pages/screens are referred to as *Activity*
* In *iOS*, these pages/screens are referred to as *ViewController*

In Flutter, *Routes* are referred to as *Widget*

A `Route` can be written as a `class`, and has its own contents and UI

An example of two *routes*, each one with their own unique *App Bar* and *Raise Button* could be:

```dart
import 'package:flutter/material.dart';

void main() {
runApp(const MaterialApp(
	home: HomeRoute(),
));
}


/// Route Home
class HomeRoute extends StatelessWidget {
const HomeRoute({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: const Text('Route demo - HomeRoute'),
		backgroundColor: Colors.cyan,
	),
	body: Center(
		child: ElevatedButton(
			child: const Text('Load SecondRoute'),
			onPressed: () {
			Navigator.push(
				context,
				MaterialPageRoute(builder: (context) => const SecondRoute()),
			);
			}),
	),
	);
}
}


/// Route Second
class SecondRoute extends StatelessWidget {
const SecondRoute({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: const Text("Route demo - SecondRoute"),
		backgroundColor: Colors.indigo,
	),
	body: Center(
		child: ElevatedButton(
		onPressed: () {
			Navigator.pop(context);
		},
		child: const Text('Go to HomeRoute'),
		),
	),
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


## <a name="stateful_widget"></a>**Stateful widget**
In Flutter, we can create a `page` using for example, the *Stateful widget*

For example, the next sample code shows you a *MyHomePage* using a `Stateful widget`

The *Stateful widget* contains of two parts

The first one is itself immutable, creates a `State` object that holds the state of the object

The `State` object implements the `build()` method and persists over the life of the *widget*. When the state of the *widget tree* changes, call `setState()`, which triggers a build of that portion of the UI

> Performance issue: be sure that you call `setState()` only when necessary, and only on the part of the widget tree that has changed

```dart
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set the appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
```


## <a name="ui_immutability"></a>**UI Immutability**
In Flutter, the `UI` is also known as `widget tree`, and is immutable

Immutable means you can't change its state once it's built

When you want to change the fields, you have to do it in the `State` class, then call the `setState()` method to **rebuild** the entire `widget tree` again

See [`Stateful widget`](#stateful_widget) for more details


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

In Flutter, a *Page* or *Screen* is called `Route`

According this, a *Route* is a widget, and the elements that you include in a *Route*, like a *button*, or a *progress bar* for example, are widgets too

And when you build a *Route*, you are creating a *widget tree*

