import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class RentWidget extends StatelessWidget {
  const RentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Rent',
          style: TextStyle(
              fontSize: 48, color: Colors.pink, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class BuyWidget extends StatelessWidget {
  const BuyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Buy',
          style: TextStyle(
              fontSize: 48, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Cross Fade',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animated Cross Fade Home Page'),
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
  String label = 'Buy';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AnimatedCrossFade(
              firstChild: const RentWidget(),
              secondChild: const BuyWidget(),
              crossFadeState:
                  flag ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
            TextButton.icon(
              onPressed: () {
                setState(() {
                  flag = !flag;
                  label = flag ? "Buy" : "Rent";
                });
              },
              label: Text(
                label,
                style: const TextStyle(color: Colors.green),
              ),
              icon: const Icon(
                Icons.circle,
                size: 24,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
