import 'package:flutter/material.dart';

class Person {
  int? id;
  String? title;
  String? subtitle;
  int? counter;

  Person({this.id, this.title, this.subtitle, this.counter});
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'ListTile with Rounded Borders',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Person> people = [
    Person(
        id: 1,
        title: "Directors",
        subtitle: "Get all the Directors details",
        counter: 7),
    Person(
        id: 2,
        title: "Subdirectors",
        subtitle: "Get all the Subdirectors details",
        counter: 12),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListTile with Rounded Borders')),
        body: SafeArea(
            child: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) => Card(
            elevation: 12,
            color: Colors.yellowAccent[400],
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: ListTile(
              onTap: () {
                debugPrint('Clicked ${people[index].id}');
              },
              leading: CircleAvatar(
                backgroundColor: Colors.black54,
                foregroundColor: Colors.white,
                child: Text(
                  people[index].counter.toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(
                people[index].title.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blueGrey),
              ),
              subtitle: Text(
                people[index].subtitle.toString(),
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: const Icon(Icons.search),
            ),
          ),
        )));
  }
}
