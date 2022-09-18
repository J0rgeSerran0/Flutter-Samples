import 'package:fluent_ui/fluent_ui.dart';
import 'dart:io';
import 'package:macos_ui/macos_ui.dart';
import 'package:flutter/cupertino.dart';

void main() {
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {}

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MacosApp(
      theme: MacosThemeData.light(),
      darkTheme: MacosThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return const MacosScaffold(
          toolBar: ToolBar(
            title: Text('ToolBar Demo Bar'),
            titleWidth: 200.0,
          ),
        );
      },
    );
  }
}
