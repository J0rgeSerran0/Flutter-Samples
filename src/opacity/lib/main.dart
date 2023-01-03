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
