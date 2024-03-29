# Windows Quick Installation Guide

## Reference
- [`Get Started - Install`](https://docs.flutter.dev/get-started/install)

## Installation Guide
- [Install PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-windows-powershell)
- [Install Visual Studio Code (optional)](https://code.visualstudio.com/)
- [Install git](https://git-scm.com/download/win)
- [Download Flutter and extract into a custom folder](https://flutter-ko.dev/development/tools/sdk/releases)

- Update your path writting in the search bar **env**

> Go to the **Edit the system environment variables**
> 
> Go to **Environment Variables**
> 
> Edit the **Path** entry
> 
> Append the full path to Flutter. For example: **C:\dev\flutter\bin**
> 
> Open a console Window to test Flutter, writting *where flutter dart*

* [Install Android Studio](https://developer.android.com/studio)

* Open Android Studio

> Select all the parts that you have to install (android-sdk-license with Android SDK, Android SDK Command-line Tools, and Android SDK Build-Tools, and others)

* Run the command **flutter config --android-studio-dir="<directory>"** where *<directory>* is the path where Android Studio is located. For example **flutter config --android-studio-dir="C:\Program Files\Android\Android Studio"**

* Open Android Studio

> Open SDK Manager
> 
> Select the tab SDK Tools
> 
> Uncheck the option Hide Obsolete Packages, and select Android SDK Tools and Android SDK Command-line Tools
> 
> Press the OK button to install these packages

* Execute the command **flutter doctor --android-licenses** to check the licenses selecting the key **Y** to accept all pages

* Run **flutter doctor** to check if all is installed correctly

![image](https://github.com/J0rgeSerran0/Flutter-Samples/assets/6237500/937a5eb1-e1ee-4959-8884-2b567f973f89)


# Start here!
- [`Get Started - Install`](https://docs.flutter.dev/get-started/install)
- [`git - Install`](https://git-scm.com/download/)

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
On you mac, open a terminal window and execute the next command to know what type of macOS you have

`system_profiler SPHardwareDataType | grep 'Model Identifier'` 
- [OpenCore Legacy Patcher - Supported Models](https://dortania.github.io/OpenCore-Legacy-Patcher/MODELS.html)
- [How to Install MacOS Monterey 12 on an Unsupported Mac, MacBook, iMac or Mac Mini in 2022](https://www.youtube.com/watch?v=McmO7xP4wvI)
- [NEW 2022! Monterey on Unsupported Macs [2008-2015] OpenCore Legacy Patcher](https://www.youtube.com/watch?v=-huRykhjs6g)
- [OpenCore Legacy Patcher](https://dortania.github.io/OpenCore-Legacy-Patcher/START.html)
- [OpenCore Legacy Patcher - Releases](https://github.com/dortania/OpenCore-Legacy-Patcher/releases)
- [How to fix Monterey problems](https://setapp.com/how-to/fix-macos-monterey-problems)

| VERSION                    | NAME                         | DATE ANNOUNCED       |
|----------------------------|------------------------------|----------------------|
| RHAPSODY DEVELOPER RELEASE | Grail1Z4 / Titan1U (Interno) | January, 1997        |
| MAC OS X SERVER 1.0        | Hera (Interno)               | Unknown              |
| MAC OS X DEVELOPER PREVIEW | -                            | May, 1998            |
| MAC OS X PUBLIC BETA       | Kodiak (Interno)             | May, 2000            |
| MAC OS X 10.0              | Cheetah                      | January, 2001        |
| MAC OS X 10.1              | Puma                         | July, 2001           |
| MAC OS X 10.2              | Jaguar                       | May, 2002            |
| MAC OS X 10.3              | Panther                      | June, 2003           |
| MAC OS X 10.4              | Tiger                        | May, 2004            |
| MAC OS X 10.5              | Leopard                      | June, 2006           |
| MAC OS X 10.6              | Snow Leopard                 | June, 2008           |
| MAC OS X 10.7              | Lion                         | October, 2010        |
| OS X 10.8                  | Mountain Lion                | February, 2012       |
| OS X 10.9                  | Mavericks                    | June, 2013           |
| OS X 10.10                 | Yosemite                     | June, 2014           |
| OS X 10.11                 | El Capitan                   | June, 2015           |
| MACOS 10.12                | Sierra                       | June, 2016           |
| MACOS 10.13                | High Sierra                  | June, 2017           |
| MACOS 10.14                | Mojave                       | June, 2018           |
| MACOS 10.15                | Catalina                     | June, 2019           |
| MACOS 11                   | Big Sur                      | June, 2020           |
| MACOS 12                   | Monterey                     | June, 2021           |
| MACOS 13                   | Ventura                      | June, 2022           |
| MACOS 14                   | Sonoma                       | June, 2023           |

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

The Dart tool uses Google Analytics to report feature usage statistics and to send basic crash reports. This data is used to help improve the Dart platform and tools over time

To disable reporting of telemetry and analytics, run:

```
dart --disable-analytics
dart --disable-telemetry
```

Analytics reporting disabled. In order to enable it, run:

```
dart --enable-analytics
```


## Flutter Commands
General commands
- **Get Flutter Help** `flutter --help --verbose`
- **Check Flutter Health** `flutter doctor`
- **Check the version of Flutter installed** `flutter --version`
- **Upgrade Flutter** `flutter upgrade` (to upgrade Flutter with the last stable version)

> If you receive an error similar to *Unknown flutter tag. Abandoning upgrade to avoid destroying local changes. It is recommended to use git directly if not working on an official channel* when you execute the command `flutter upgrade`, you could try the command `flutter upgrade --force` instead. In this case and after do this, execute the command `flutter doctor` as well to check that all is ok

---
Flutter App commands
- **Create a Flutter App** `flutter create <app_name>`
- **Analyze a Flutter App** `flutter analyze`
- **Run Unit Tests** `flutter test` or `flutter directory_test` or `flutter test <file_test.dart>`
- **Install a Flutter Package** `flutter pub add <package_name>`
- **Get the Flutter packages for the project** `flutter packages get`
- **Get the Flutter project with the packages found in pubspec.yaml** `flutter pub get`
- **Update the Flutter packages** `flutter pub update`
- **Run App** `flutter run`
- **List available emulators** `flutter emulators`
- **Install Flutter App on a Device** `flutter install -d <device_id>`
- **Build a Flutter App** `flutter build <type_of_app>` (for example: `flutter build ios` or `flutter build apk`)


## Flutter Packages
- [Flutter Packages Site](https://pub.dev/packages/)

## Flutter Local Offline Databases
- [**ObjectBox** (NoSQL)](https://pub.dev/packages/objectbox)
- [Sembast (NoSQL)](https://pub.dev/packages/sembast)
- [Drift (SQL relational)](https://pub.dev/packages/drift)
- [Sqflite (SQL relational)](https://pub.dev/packages/sqflite)
- [**Isar** (NoSQL)](https://pub.dev/packages/isar) and [Isar Database](https://isar.dev/es/)
- [Hive (NoSQL) `discontinued`](https://pub.dev/packages/hive)

## Flutter Online Databases
- [**Firebase Core**](https://pub.dev/packages/firebase_core)
- [**AWS Amplify** (Cloud based backend as a service)](https://docs.amplify.aws/)
- [Realm (NoSQL mongodb based online backend as a service)](https://www.mongodb.com/docs/realm/sdk/flutter/)
- [AppWrite (NoSQL online backend as a service)](https://pub.dev/packages/appwrite)
- [Parse Server (SQL relational online backend as a service)](https://pub.dev/packages/parse_server_sdk_flutter)
- [Supabase (Online backend as a service)](https://supabase.com/)
- [Firebase (NoSQL) `discontinued and replaced by firebase_core`](https://pub.dev/packages/firebase)

## Flutter Backend
- [Dart Frog (SQL based backend framework)](https://dartfrog.vgv.dev/)
- [Serverpod (SQL based backend framework)](https://serverpod.dev/)


## Flutter App Architecture and Project Structure

### **Main steps when we start a new Flutter App**
> The App Architecture will force us to define the layers and boundaries of the App
> The layers and boundaries will help us to define the folders and Project Structure

1) Decide the App Architecture to use
2) Choose the Project Structure

### **Notes about the App Architecture**
In general is very important, and critical for complex apps or projects, decide the App Architecture before start a project, because it will help us to handle the bounders, complexity and productivity of it in the correct way

Popular or familiar App Architectures used long ago (and today), are *MVC, MVP, MVVM* and *Clean Architecture*. To be honest, *MVC, MVP and MVVM* are *design patterns*, and *Clean Architecture* defines a set of rules and principles for complex solutions or projects, but **are not good Architectures to use them with Flutter**

In the other hand we have some alternatives:

1) [*Bloc Architecture*](https://bloclibrary.dev/#/architecture) has an important popularity. [*Bloc Library*](https://bloclibrary.dev/#/) has helped to adopt this Architecture for Flutter Apps. This Architecture gives us a **strict set of rules** about how to structure our Flutter Apps. *Bloc Library* rely on [Provider Package](https://pub.dev/packages/provider), which is the [recommended package for state management](https://docs.flutter.dev/development/data-and-backend/state-mgmt/simple). More details about [`BLoC in Spanish`](BLoC.md)

2) *Stacke Architecture* based in the [*Stacked package*](https://pub.dev/packages/stacked) and inspired by *MVVM*. *Stacked package* rely on [Provider Package](https://pub.dev/packages/provider), which is the [recommended package for state management](https://docs.flutter.dev/development/data-and-backend/state-mgmt/simple)

3) [*Riverpod Package*](https://pub.dev/packages/riverpod), created by the [Provider Package's author](https://pub.dev/packages/provider) could help us to create our own Architecture. This package is a good package for *dependency injection* and *state management*

4) Custom Architecture, depending of our experiences. Good to be more flexible and cover all possibilities, because sometimes, a type of Architecture could be a good idea for a project, but a bad one for other project, so open your mind about that is possible that not all projects should be use the same type of Architecture always

### **Architecture Layers**
Taking our App as an all, we could slice our App in four layers
- Presentation Layer
- Application Layer
- Domain Layer
- Data Layer

![Flutter App Architecture](images/Flutter_App_Architecture_01.png)

But we could think in a less complex Architecture with three layers only
- Presentation Layer
- Application Layer
- Data Layer

![Flutter App Architecture](images/Flutter_App_Architecture_02.png)

#### *UI Layer* and/or **Presentation Layer**
This layer would store the *Widgets*, *States*, *Controllers* and *Commands*, and should be focused in the *Presentation Logic*

#### **Application Layer** or **Business Layer**, and **Domain Layer**
This layer would store the *Services*, *Mappings*, *Components*, *Caching*, *Instrumentation*, *Processors*, *Configuration* and *Models* or *Entities*, and should be focused in the *Business Rules (enterprise business rules and application business rules)*

#### *Data Layer*
This layer would store the *Repositories*, *DTOs*, *Data Utilities* and *Data Providers*, and should be focused in the *Data Access* and how the data is returned to the caller

---

The ideal scenario when we develop a new project, is organize our projects by a set of features (*functional requirement*, *user story*, or *oriented to domain*), and inside of each feature, their layers

When we create, edit/modify, or delete a feature, we can focus in the feature as an independent feature

And when we create our test coverage of each feature, we can focus in it to cover the unit tests with confidence

Later, we can explore the integration and acceptance tests too in the same way

![Flutter App Architecture](images/Flutter_App_Architecture_03.png)

![Flutter App Architecture](images/Flutter_App_Architecture_04.png)

### **References**
- [Flutter App Architecture Riverpod Introduction](https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/)
- [Flutter Project Structure](https://codewithandrea.com/articles/flutter-project-structure/)


### **Flutter Language Specification Draft**
This is my own document about Flutter to help to the developer, to create their own Flutter samples. Is not a bible, just a helper document

[You can find it here](Flutter_Language_Specification_Draft.md)


### **Flutter Icons**
[Flutter custom icons generator](https://www.fluttericon.com/)


### **C# to Dart**
[C# to Dart (quick reference)](CSharp_to_Dart_quick_reference.md)


---

# Flutter-Samples
Quick Flutter resources and samples

1. Create the flutter project `flutter create <name>`
2. Overwrite the `lib` folder with the sample code
3. *Optional* `flutter packages get` and `flutter run`

## <a name="general_samples"></a>[**General Samples**](src/README.md)
![#A30204](https://via.placeholder.com/10x10/F28082/000000.png?text=+) All samples tested with [**Flutter 3**](Flutter_3.md)

- `Add or Remove and element`
- `Alert Dialog Box`
- `Animated Builder`
- `Animated Cross Fade`
- `Animated Default Text Style`
- `Bottom Navigation Bar`
- `Button Full Width`
- `Button Multiple Toggle Switch`
- `Button Toggle Switch`
- `Calculator`
- `Circular Loading Indicator`
- `Combo Box`
- `Date Picker`
- `Dialog Box with 2 buttons`
- `Dialog Box with 3 buttons`
- `Form Dialog Box`
- `Future`
- `Horizotal Toolbar`
- `Http Get and Post`
- `Icon Text`
- `Linear Loading Indicator`
- `ListTile with Rounded Borders`
- `Load Base64 Image`
- `Load JSON File`
- `Load SVG Image`
- `Login Page`
- `Login Page With Release`
- `Markdown Text`
- `Opacity`
- `Opacity with Linear Gradient`
- `Play Sound File`
- `Rating`
- `Rounded Bottom Navigation Bar`
- `Routes`
- `Sqlite Sample`
- `Switch Button`
- `Switch Cover Button`
- `Text Field Search Box`
- `ToDo List`


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

## Flet
<img src="https://github.com/flet-dev/flet/raw/main/media/logo/flet-logo.svg" width="230" height="80" />

> Framework that enables you to easily build real-time web, mobile, and desktop apps

> Flet is language-agnostic, so anyone on your team could develop Flet apps in their favorite language. At the moment, `Python` is supported, and Go, C# are coming next

> Write a monolith stateful app in Python only and get multi-user, real-time Single-Page Application (SPA)

> `Flet UI` is built with Flutter

* Information about [Flet](https://github.com/flet-dev/flet)
* [Flet Roadmap](https://flet.dev/roadmap/)
* [Flet Tutorials](https://flet.dev/docs/tutorials/)
* [Projects done with Flet](https://github.com/flet-dev/awesome-flet)

#### Requirements
* An editor or your favorite IDE like Microsoft Visual Studio Code (no SDKs, dependencies or complex tooling)
* Install flet `pip install flet`

#### Commands
* `python -m venv venv` to create a virtual environment
* `source ./venv/bin/activate` or `source ./venv/Scripts/activate` or `.\venv\Scripts\activate` to activate the virtual environment
* `python name.py` to run the program
* `pip install flet` to install flet
* `flet .\name.py` to run the app quickly
* `pip install flet --upgrade` to upgrate flet

#### Samples to move from skeleton to functional
**Basic Sekeleton**
```python
import flet as ft

def main(page):
    pass

ft.app(target=main)
```

**Hello World sample**
```python
import flet as ft

def main(page: ft.Page):
    page.add(ft.Text(value="Hello Flet!"))

ft.app(target=main)
```

**Hello World sample (Async)**
```python
import flet as ft

async def main(page: ft.Page):
    await page.add_async(ft.Text(value="Hello Flet!"))

ft.app(target=main)
```

**Main Window with standard properties**
```python
import flet as ft

def main(page: ft.Page):
    page.window_width = 360
    page.window_height = 640
    page.window_resizable = False
    page.padding = 0

    window_container = ft.Container(width=360, height=640, bgcolor=ft.colors.BLUE, alignment=ft.alignment.top_center)

    await page.add_async(container)

ft.app(target=main)
```

