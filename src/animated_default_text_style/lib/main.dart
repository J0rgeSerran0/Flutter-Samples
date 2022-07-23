import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Default Text Style',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animated Default Text Style Home Page'),
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
  bool flag = true;
  double fontSize = 30;
  Color color = Colors.blue;
  Color backgroundColor = Colors.white;
  String message = 'Normal Text';

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
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                style: TextStyle(
                    fontSize: fontSize,
                    backgroundColor: backgroundColor,
                    color: color,
                    fontWeight: FontWeight.bold),
                duration: const Duration(microseconds: 300),
                child: Text(message),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  flag = !flag;
                  color = flag ? Colors.blue : Colors.pink;
                  message = flag ? 'Normal Text' : 'Error';
                  fontSize = flag ? 30 : 60;
                  backgroundColor = flag ? Colors.white : Colors.white54;
                });
              },
              child: const Text(
                '> Action',
                style: TextStyle(fontSize: 24, color: Colors.black45),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
