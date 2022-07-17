import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Circular Loading Indicator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;

  // This function will be called when the button gets pressed
  startLoading() {
    setState(() {
      isLoading = true;
    });

    Timer(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: const Text(
            'Circular Loading Indicator',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  strokeWidth: 8,
                  color: Colors.blue,
                  backgroundColor: Colors.amber,
                )
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black38,
                      onPrimary: Colors.white,
                      shadowColor: Colors.black87,
                      padding: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      )),
                  onPressed: startLoading,
                  child: const Text('Load Data')),
        ));
  }
}
