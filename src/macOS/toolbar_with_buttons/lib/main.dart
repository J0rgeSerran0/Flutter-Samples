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
        return MacosScaffold(
          toolBar: ToolBar(
              title: const Text('ToolBar Demo Bar'),
              titleWidth: 200.0,
              actions: [
                ToolBarIconButton(
                  label: "Add",
                  icon: const MacosIcon(
                    CupertinoIcons.add_circled,
                  ),
                  onPressed: () => debugPrint("Add..."),
                  showLabel: true,
                ),
                const ToolBarSpacer(),
                ToolBarIconButton(
                  label: "Delete",
                  icon: const MacosIcon(
                    CupertinoIcons.trash,
                  ),
                  onPressed: () => debugPrint("Delete"),
                  showLabel: false,
                ),
                ToolBarPullDownButton(
                  label: "Actions",
                  icon: CupertinoIcons.ellipsis_circle_fill,
                  items: [
                    MacosPulldownMenuItem(
                      label: "New File",
                      title: const Text("New File"),
                      onTap: () => debugPrint("Creating new file..."),
                    ),
                    MacosPulldownMenuItem(
                      label: "Open File",
                      title: const Text("Open File"),
                      onTap: () => debugPrint("Opening file..."),
                    ),
                  ],
                ),
              ]),
        );
      },
    );
  }
}
