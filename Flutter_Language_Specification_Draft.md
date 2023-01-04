# **Flutter Language Specification Draft**

- [`App Widget`](#app_widget)
- [`Asynchronous - Future, async, await`](#asynchronous)
- [`Material Components widgets for Android and Apple`](#material_components_widgets)
- [`Opacity widget`](#opacity_widget)
- [`Pages, Screens and Routes`](#pages_screens_routes)
- [`Started Point of the app`](#started_point)
- [`Stateful widget`](#stateful_widget)
- [`Stateless widget`](#stateless_widget)
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


## <a name="asynchronous"></a>**Asynchronous - Future, async, await**
As you know, a function returns a result and is a sequentially action. The function is called, runs and returns the result. One key point here, is that the caller wait until get the result to continue.

The problem here is that some actions take too time. Actions like access to resources (hardware, network, devices, input/output, etc) could take too much time.

When you want to show a screen with different parts or components, some of them could take very few time, but others too much. If you work in a sequential order to get all the information, the caller will have to wait to have all the information to continue between processes.

Normally, in a sequential process, when a caller wait for a result in a slow call, the app just freezes avoiding to do other things between the process is being executed

This is catalogued as a bug today, and you can use other techniques to hide it, like use an animation image, spinner, hourglass, progress bar, etc. But you will have to manage the response to stop the animation

**So, how can I run long tasks, show an animation, wait for the results and avoid the app freezes?**

Using `asynchronous operations`, that run while code waits for something

And, how does the compiler know all this?. How does the compiler know, whether it should actually stop everything and wait for a result or continue with all the background work and wait only in this instance?. Obviously, we have to indicate it to tell to the compiler how we want that it acts

The use of the pattern, or syntactic sugar `async/await` will help us to do it, and it is not a magic syntax, specific for `flutter` or `dart`. Other programming languages implement this possibility

Under the scene, a method that takes some time, cannot return immediately, so it will return a `promise`. Is the `promise` of delivering a value when the process will be done. This is called `Future` in `dart`

So, `Future` is like a special type of object which allows you to use `async/await` syntactic sugar, writting asynchronous code in synchronous/linear way. In other words, is an object representing a delayed computation

> In other programming languages, `Future` is known as `Promise in JS`, `Future in Java and Python`, or `Task in C#`

Now, imagine that you want to show a lot of results in a screen. One of this results is the sum of all values from a table in a database. You know that this operation take some time, and you don't want to stop the execution of the rest actions. Obviously, the use of a `Future` seams a good solution here.

In general, a `promise` will return a `Future<T>`, and the `T` will be our result. It could be a `Future<List<Customer>>`, or a `Future<String>` for example. For our theorical sample, our 'promise' will return a `Future<int>`.

In summary, a `Future` represents the result of an asynchronous operation, and can have **two states**: `uncompleted` or `completed`

But talking about `flutter`, all in `flutter` are `widgets`, and a `widget` expects real values, not some `promise` os a value to come at a later time. How?

Yes, but to sove this, we have the help of [`FutureBuilder`](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html), a `widget` that builds itself based on the latest snapshot of interaction with a `Future`

You can use `FutureBuilder` when you have a `Future`, to display one thing while you are waiting for it (a hourglass, a progress indicator, etc), and other thing when it's done (the result indeed)

Here a complete sample of the use of `Future` and `FutureBuilder`:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// we simule a delay of 3 seconds
Future<String> getNameFromDatabase() {
  return Future<String>.delayed(const Duration(seconds: 3), () async => 'Name Sample');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: FutureSample(),
        ),
      ),
    );
  }
}

class FutureSample extends StatefulWidget {
  @override
  FutureSampleState createState() => FutureSampleState();
}

class FutureSampleState extends State<FutureSample> {
  Future<String>? delivery;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: delivery != null ? null : () => setState(() { delivery = getNameFromDatabase(); }),
            child: const Text('Get Name (using Future)')
          ),
          const SizedBox(
              height: 10,
            ),
          delivery == null
            ? const Text('Future has not been executed yet')
            : FutureBuilder(
              future: delivery,
              builder: (context, snapshot) {
                if(snapshot.hasData) {
                  return Text('Future executed: ${snapshot.data}');
                } else if(snapshot.hasError) {
                  return Text('Future error: ${snapshot.error.toString()}');
                } else {
                  return const CircularProgressIndicator();
                }
              })
        ]);
  }
}
```

* [Future class](https://api.flutter.dev/flutter/dart-async/Future-class.html)
* [Asynchronous programming - futures, async, await](https://dart.dev/codelabs/async-await)


## <a name="material_components_widgets"></a>**Material Components Widgets for Android and Apple**
Flutter includes the *Material Components library*, a widget collection that implements the [Material Design Guidelines](https://m2.material.io/design/guidelines-overview/)

Some of the widgets included in the *Material Components library* are *buttons*, *inputs*, *dialogs*, *alerts*, etc

* The `list` of [Material Components widgets can be found here](https://docs.flutter.dev/development/ui/widgets/material)
* The `widget catalog` [can be found here](https://docs.flutter.dev/development/ui/widgets)

But with Flutter, you can implement any design language

For example, on iOS you can use the [Cupertino widgets](https://docs.flutter.dev/development/ui/widgets/cupertino) to produce an interface that looks like [Apple Design Resources](https://developer.apple.com/design/resources/)


## <a name="opacity_widget"></a>**Opacity widget**
In Flutter, you need to wrap a widget in an [Opacity widget](https://api.flutter.dev/flutter/widgets/Opacity-class.html)

The values for Opacity is from 0.0 to 1.0

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const SampleApp());
}

class SampleApp extends StatelessWidget {
  /// This widget is the root of your application.
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  const SampleAppPage({super.key});

  @override
  State<SampleAppPage> createState() => SampleAppPageState();
}

class SampleAppPageState extends State<SampleAppPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Opacity')),
      backgroundColor: Colors.red,
      body: Column(
          children: [
            Opacity(
                opacity: 1,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text('Opacity = 1'),
                )),
            Opacity(
                opacity: 0.8,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text('Opacity = 0.8'),
                )),
            Opacity(
                opacity: 0.6,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text('Opacity = 0.6'),
                )),
            Opacity(
                opacity: 0.3,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text('Opacity = 0.3'),
                )),
            Opacity(
                opacity: 0.1,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text('Opacity = 0.1'),
                )),
            // This one takes place but it's invisible
            Opacity(
                opacity: 0,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text('Opacity = 0'),
                )),          
          ],
      ));
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


## <a name="stateless_widget"></a>**Stateless widget**
A `Stateless widget` is a widget with no state information

A `Stateless widget` is useful when the part of the user interface does not depending on anything other than the configuration information in the object

If you want to dynamically change the UI based on data received after a user interaction or other, you have to work with the `StatefulWidget` to tell the Flutter Framework, that the *widget's State* has been updated and update the widget

> Gold Rule: If a widget changes (because of user interactions, for example) it’s stateful. However, if a widget reacts to change, the containing parent widget can still be stateless if it doesn’t itself react to change

A sample of a `Stateless` widget is:

```dart
const Text(
  'Flutter Text!',
  style: TextStyle(fontWeight: FontWeight.bold),
);
```

But the combination of a `Statefull widget` and a `Stateless widget`, could be the next one, with a `Stateless` app, and the `Statefull` page with a text, that change dynamically:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const SampleApp());
}

class SampleApp extends StatelessWidget {
  /// This widget is the root of your application.
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sample App',
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  const SampleAppPage({super.key});

  @override
  State<SampleAppPage> createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  /// Default placeholder text
  String textToShow = 'I Like Flutter';

  void _updateText() {
    setState(() {
      // Update the text
      textToShow = 'Flutter is Awesome!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample App')),
      body: Center(child: Text(textToShow)),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: const Icon(Icons.update),
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
In Flutter, everything is a `widget`, and the *widgets* are immutable

When you change a property, you can not directly update a widget, instead you have to work with the *widget's state* (see [`Stateful widget`](#stateful_widget) too)

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

