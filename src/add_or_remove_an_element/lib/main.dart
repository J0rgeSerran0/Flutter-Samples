import 'package:flutter/cupertino.dart';
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
  /// Default value for toggle
  bool toggle = true;

  void executeByToggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  Widget getToggleChild() {
    if (toggle) {
      return const Text('Text - Toggle One');
    }
    return CupertinoButton(
      onPressed: () {},
      child: const Text('Cupertino Button - Toggle Two'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add or Remove an element')),
      body: Center(child: getToggleChild()),
      floatingActionButton: FloatingActionButton(
        onPressed: executeByToggle,
        tooltip: 'Update Text',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
