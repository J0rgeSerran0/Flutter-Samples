import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bottom Navigation Bar'),
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
  List<Widget> items = const [
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Seach',
    ),
    Text(
      'Index 2: Profile',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(100, 53, 59, 59),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 59, 59),
        title: Text(widget.title),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: IndexedStack(index: selectedIndex, children: items),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onTap,
        fixedColor: Colors.red,
        backgroundColor: Colors.white,
        elevation: 4,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }

  void _onTap(int index) {
    selectedIndex = index;
    setState(() {});
  }
}
