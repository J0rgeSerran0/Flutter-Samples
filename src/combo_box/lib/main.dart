import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Combo Box Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'Combo Box Demo'),
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
  List<String> items = ["Barcelona", "Cádiz", "Madrid", "Zaragoza"];
  String dropdownValue = 'Barcelona';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white70),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.amber,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20.0,
                  spreadRadius: 0.5,
                  offset: Offset(1.0, 1.0),
                ),
              ],
            ),
            padding: const EdgeInsets.only(left: 40),
            margin: const EdgeInsets.only(top: 12, left: 12, right: 16.0),
            child: DropdownButton(
              isExpanded: true,
              iconSize: 28,
              iconEnabledColor: Colors.brown,
              style: const TextStyle(fontSize: 16),
              underline: Container(
                height: 0,
              ),
              items: items.map(
                (val) {
                  return DropdownMenuItem(
                    value: val,
                    child: Text(
                      val,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.brown),
                    ),
                  );
                },
              ).toList(),
              dropdownColor: const Color.fromARGB(255, 207, 186, 109),
              value: dropdownValue,
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 26, left: 24),
            child: const Icon(
              Icons.location_city,
              color: Colors.black45,
              size: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
