import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal Toolbar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: ''),
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
      backgroundColor: const Color.fromARGB(255, 53, 59, 59),
      appBar: AppBar(
        title: Text(widget.title),
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            child: const Icon(
              Icons.menu,
              color: Colors.black87,
            )),
        actions: [
          IconButton(
              tooltip: 'New',
              color: Colors.black54,
              icon: const Icon(Icons.create),
              onPressed: () {}),
          IconButton(
              tooltip: 'Save',
              color: Colors.black54,
              icon: const Icon(Icons.save),
              onPressed: () {}),
          const VerticalDivider(
            color: Color.fromARGB(100, 65, 57, 57),
            thickness: 2,
            width: 20,
            endIndent: 8,
            indent: 8,
          ),
          IconButton(
              tooltip: 'Cut',
              color: Colors.black54,
              icon: const Icon(Icons.cut),
              onPressed: () {}),
          IconButton(
              tooltip: 'Copy',
              color: Colors.black54,
              icon: const Icon(Icons.copy),
              onPressed: () {}),
          IconButton(
              tooltip: 'Paste',
              color: Colors.black54,
              icon: const Icon(Icons.paste),
              onPressed: () {}),
          const VerticalDivider(
            color: Color.fromARGB(100, 65, 57, 57),
            thickness: 2,
            width: 20,
            endIndent: 8,
            indent: 8,
          ),
          IconButton(
              tooltip: 'Align Horizontal Left',
              color: Colors.black54,
              icon: const Icon(Icons.align_horizontal_left),
              onPressed: () {}),
          IconButton(
              tooltip: 'Align Horizontal Center',
              color: Colors.black54,
              icon: const Icon(Icons.align_horizontal_center),
              onPressed: () {}),
          IconButton(
              tooltip: 'Align Horizontal Right',
              color: Colors.black54,
              icon: const Icon(Icons.align_horizontal_right),
              onPressed: () {}),
          const VerticalDivider(
            color: Color.fromARGB(100, 65, 57, 57),
            thickness: 2,
            width: 20,
            endIndent: 8,
            indent: 8,
          ),
          IconButton(
              tooltip: 'Settings',
              color: Colors.black54,
              icon: const Icon(Icons.settings),
              onPressed: () {}),
          const VerticalDivider(
            color: Color.fromARGB(0, 65, 57, 57),
            thickness: 2,
            width: 8,
            endIndent: 8,
            indent: 8,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Horizontal Toolbar Sample',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Segoe UI',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.05),
            ),
          ],
        ),
      ),
    );
  }
}
