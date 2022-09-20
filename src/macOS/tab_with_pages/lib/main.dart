import 'package:fluent_ui/fluent_ui.dart';
import 'dart:io';
import 'package:macos_ui/macos_ui.dart';
import 'package:flutter/cupertino.dart';
import 'pages/tab1page.dart' as tab1page;
import 'pages/tab2page.dart' as tab2page;
import 'pages/tab3page.dart' as tab3page;

void main() {
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {}

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MacosApp(
      title: 'Button',
      theme: MacosThemeData.light(),
      darkTheme: MacosThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = MacosTabController(
    initialIndex: 0,
    length: 3,
  );

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MacosScaffold(
        toolBar: const ToolBar(
          title: Text('TabView with Pages'),
        ),
        children: [
          ContentArea(
            builder: (context, scrollController) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: MacosTabView(
                  position: MacosTabPosition.bottom,
                  controller: _controller,
                  tabs: const [
                    MacosTab(
                      label: 'Tab Page 1',
                    ),
                    MacosTab(
                      label: 'Tab Page 2',
                    ),
                    MacosTab(
                      label: 'Tab Page 3',
                    ),
                  ],
                  children: [
                    tab1page.TabPage(),
                    tab2page.TabPage(),
                    tab3page.TabPage(),
                  ],
                ),
              );
            },
          ),
        ],
      );
    });
  }
}
