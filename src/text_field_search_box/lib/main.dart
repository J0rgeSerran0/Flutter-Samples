import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search Text Field',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[200],
        title: const Text(
          "Text Field Search Box",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: TextField(
              onSubmitted: ((value) {
                setState(() {
                  text = value;
                });
              }),
              onChanged: (value) {},
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                //icon: Icon(Icons.search),
                suffixIcon: Icon(Icons.search),
                hintText: 'Search',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 1.2),
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                ),
              ),
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
