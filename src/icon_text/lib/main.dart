import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon Text',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Icon Text'),
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
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(100, 120, 100, 20),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.car_rental),
                  label: const Text(
                    "Car",
                    style: TextStyle(color: Colors.white),
                  )),
              const VerticalDivider(
                width: 2,
                color: Colors.white,
              ),
              ElevatedButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.pedal_bike),
                  label: const Text(
                    "Bike",
                    style: TextStyle(color: Colors.white),
                  )),
              const VerticalDivider(
                width: 2,
                color: Colors.white,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.motorcycle),
                  label: const Text(
                    "Motorcycle",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
