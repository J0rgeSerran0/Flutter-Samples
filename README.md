# Start here!
- [`Get Started - Install`](https://docs.flutter.dev/get-started/install)

---

Executed under [GitHub Gist](https://gist.github.com/)

- [`General Samples`](#general_samples)
- [`macOS Samples`](#macos_samples)
- [`Tests Samples`](#tests_samples)


## Android Studio
- [Android Studio - Download](https://developer.android.com/studio)

### Error - Android sdkmanager not found. Update to the latest Android SDK and ensure that the cmdline-tools are installed to resolve this

To solve this issue you need to install Android SDK Tools and Android SDK Command-line Tools on SDK Manager

- Open **Android Studio**
- Open **SDK Manager**
- Select the tab **SDK Tools**
- Uncheck the option *Hide Obsolete Packages*, and select **Android SDK Tools** and **Android SDK Command-line Tools**
- Press the **OK** button to install these packages

Execute the command `flutter doctor --android-licenses` to check if the error still occurs then check the **android_sdk_path\Android\SDK\cmdline-tools**

If you find more than one *latest* folders, delete the last one and remane the other *latest* folder (like *latest-2* for example) to *latest*

The error should disappear now

## Xcode
- [Minimum requirements and supported SDKs](https://developer.apple.com/support/xcode/)
- [Xcode Releases](https://xcodereleases.com/)

## Troubleshooting CocoaPods
- [Getting Started - CocoaPods](https://guides.cocoapods.org/using/getting-started.html#installation)
- [Guide to resolve problems with CocoaPods](https://guides.cocoapods.org/using/troubleshooting#installing-cocoapods)

## Update to macOS 11.x or upper
On you mac, open a terminal window and execute the next command to know what type of mac os you have

`system_profiler SPHardwareDataType | grep 'Model Identifier'` 
- [OpenCore Legacy Patcher - Supported Models](https://dortania.github.io/OpenCore-Legacy-Patcher/MODELS.html)
- [How to Install MacOS Monterey 12 on an Unsupported Mac, MacBook, iMac or Mac Mini in 2022](https://www.youtube.com/watch?v=McmO7xP4wvI)
- [NEW 2022! Monterey on Unsupported Macs [2008-2015] OpenCore Legacy Patcher](https://www.youtube.com/watch?v=-huRykhjs6g)
- [OpenCore Legacy Patcher](https://dortania.github.io/OpenCore-Legacy-Patcher/START.html)
- [OpenCore Releases](https://github.com/dortania/OpenCore-Legacy-Patcher/releases)
- [How to fix Monterey problems](https://setapp.com/how-to/fix-macos-monterey-problems)

| VERSIÓN                    | NOMBRE                       | FECHA DE LANZAMIENTO |
|----------------------------|------------------------------|----------------------|
| RHAPSODY DEVELOPER RELEASE | Grail1Z4 / Titan1U (Interno) | Agosto, 1997         |
| MAC OS X SERVER 1.0        | Hera (Interno)               | Marzo, 1999          |
| MAC OS X DEVELOPER PREVIEW | -                            | Marzo, 1999          |
| MAC OS X PUBLIC BETA       | Kodiak (Interno)             | Septiembre, 2000     |
| MAC OS X 10.0              | Cheetah                      | Marzo, 2001          |
| MAC OS X 10.1              | Puma                         | Septiembre, 2001     |
| MAC OS X 10.2              | Jaguar                       | Agosto, 2002         |
| MAC OS X 10.3              | Panther                      | Octubre, 2003        |
| MAC OS X 10.4              | Tiger                        | Abril, 2005          |
| MAC OS X 10.5              | Leopard                      | Octubre, 2007        |
| MAC OS X 10.6              | Snow Leopard                 | Agosto, 2009         |
| MAC OS X 10.7              | Lion                         | Julio, 2011          |
| OS X 10.8                  | Mountain Lion                | Julio, 2012          |
| OS X 10.9                  | Mavericks                    | Octubre, 2013        |
| OS X 10.10                 | Yosemite                     | Octubre, 2014        |
| OS X 10.11                 | El Capitan                   | Septiembre, 2015     |
| MACOS 10.12                | Sierra                       | Septiembre, 2016     |
| MACOS 10.13                | High Sierra                  | Septiembre, 2017     |
| MACOS 10.14                | Mojave                       | Septiembre, 2018     |
| MACOS 10.15                | Catalina                     | Octubre, 2019        |
| MACOS 11                   | Big Sur                      | Noviembre, 2020      |
| MACOS 12                   | Monterey                     | Octubre, 2021        |

## Visual Studio Code
I use [`Visual Studio Code`](https://code.visualstudio.com/) as editor code

The extensions I use are:
- [`Awesome Flutter Snippets`](https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets)
- [`Dart`](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)
- [`Flutter`](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [`Material Icon Theme`](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

## Firebase
1. [Install Firebase CLI](https://firebase.google.com/docs/cli#setup_update_cli) or using the automatic install script `curl -sL https://firebase.tools | bash`
2. Log into Firebase `firebase login`
3. Test that the CLI is properly installed `firebase projects:list`
4. Optional - update the CLI version (macOS) `curl -sL https://firebase.tools | upgrade=true bash`

- [Sign into Firebase](https://console.firebase.google.com/)
- [Add Firebase to your Flutter app](https://firebase.google.com/docs/flutter/setup?platform=ios)


## Sharing and Testing the Code
- To test the samples online, I am using [DartPad](https://dartpad.dev). There is a [Sharing Guide](https://github.com/dart-lang/dart-pad/wiki/Sharing-Guide) with details about how to share your samples and code online for other people

## Guides and Learning Paths
- [A tour of the Dart language](https://dart.dev/guides/language/language-tour)

## Flutter Commands
Quick Flutter commands

- **Upgrade Flutter** `flutter upgrade` (to upgrade Flutter with the last stable version)
- **Create a Flutter project** `flutter create <name>`
- **Install a Flutter Package** `flutter pub add <package_name>`
- **Execute Flutter** `flutter packages get` and `flutter run`
- **Execute Unit Tests** `flutter test <flutter_file.dart>`

## Flutter Packages
- [Flutter Packages Site](https://pub.dev/packages/)

---

# Flutter-Samples
Quick Flutter resources and samples

1. Create the flutter project `flutter create <name>`
2. Overwrite the `lib` folder with the sample code
3. *Optional* `flutter packages get` and `flutter run`

## <a name="general_samples"></a>[**General Samples**](src/README.md)
![#A30204](https://via.placeholder.com/10x10/F28082/000000.png?text=+) All samples tested with [**Flutter 3**](Flutter_3.md)

- `Alert Dialog Box`
- `Animated Builder`
- `Animated Cross Fade`
- `Animated Default Text Style`
- `Bottom Navigation Bar`
- `Button Full Width`
- `Button Multiple Toggle Switch`
- `Button Toggle Switch`
- `Circular Loading Indicator`
- `Combo Box`
- `Date Picker`
- `Dialog Box with 2 buttons`
- `Dialog Box with 3 buttons`
- `Form Dialog Box`
- `Horizotal Toolbar`
- `Http Get and Post`
- `Icon Text`
- `Linear Loading Indicator`
- `ListTile with Rounded Borders`
- `Load JSON File`
- `Login Page`
- `Login Page With Release`
- `Rating`
- `Rounded Bottom Navigation Bar`
- `Switch Button`
- `Switch Cover Button`
- `Text Field Search Box`


## <a name="macos_samples"></a>[**macOS Samples**](src/README_macOS.md)
![#A30204](https://via.placeholder.com/10x10/F28082/000000.png?text=+) All samples tested with [**Flutter 3**](Flutter_3.md)

- `CheckBox with button`
- `Tab with pages`
- `ToolBar with button`
- `ToolBar with text in the center`
- `ToolBar with text only`


## <a name="tests_samples"></a>[**Tests Samples**](src/README_tests.md)
![#A30204](https://via.placeholder.com/10x10/F28082/000000.png?text=+) All samples tested with [**Flutter 3**](Flutter_3.md)

- `Counter Test`
- `Custom Exception Test`
- `Exception Test`
- `Sum Test`


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
