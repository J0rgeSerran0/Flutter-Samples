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
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return Builder(
      builder: (context) {
        return MacosScaffold(
          children: [
            ContentArea(
              builder: (context, scrollController) {
                return Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MacosCheckbox(
                        value: checkValue,
                        onChanged: (value) {
                          setState(() => checkValue = value);
                        },
                      ),
                      const SizedBox(width: 8),
                      const Text('Are you happy?'),
                      const SizedBox(width: 12),
                      PushButton(
                        buttonSize: ButtonSize.large,
                        child: const Text('Get response'),
                        onPressed: () => debugPrint(checkValue
                            ? 'you are happy! :-)'
                            : 'you are not happy :`-('),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
