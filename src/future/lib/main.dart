import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// we simule a delay of 5 seconds
Future<String> getNameFromDatabase() {
  return Future<String>.delayed(const Duration(seconds: 3), () async => 'Name Sample');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: FutureSample(),
        ),
      ),
    );
  }
}

class FutureSample extends StatefulWidget {
  @override
  FutureSampleState createState() => FutureSampleState();
}

class FutureSampleState extends State<FutureSample> {
  Future<String>? delivery;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: delivery != null ? null : () => setState(() { delivery = getNameFromDatabase(); }),
            child: const Text('Get Name (using Future)')
          ),
          const SizedBox(
              height: 10,
            ),
          delivery == null
            ? const Text('Future has not been executed yet')
            : FutureBuilder(
              future: delivery,
              builder: (context, snapshot) {
                if(snapshot.hasData) {
                  return Text('Future executed: ${snapshot.data}');
                } else if(snapshot.hasError) {
                  return Text('Future error: ${snapshot.error.toString()}');
                } else {
                  return const CircularProgressIndicator();
                }
              })
        ]);
  }
}