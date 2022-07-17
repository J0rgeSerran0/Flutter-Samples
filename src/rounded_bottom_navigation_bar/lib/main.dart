import 'package:flutter/material.dart';

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
      title: 'Rounded Bottom Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rounded Bottom Navigation Bar')),
      body: const Center(
        child: Text(
          'Your text here!',
          style: TextStyle(fontSize: 36, color: Colors.blue),
        ),
      ),
      // implement BottomAppBar
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        notchMargin: 6,
        shape: const AutomaticNotchedShape(
          // make rounded corners
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          // create a notch for the floating action button
          StadiumBorder(),
        ),
        child: IconTheme(
          data: const IconThemeData(color: Colors.white, size: 24),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    onPressed: () {
                      debugPrint('Home');
                    },
                    tooltip: 'Home',
                    icon: const Icon(Icons.home)),
                IconButton(
                    padding: const EdgeInsets.fromLTRB(4, 0, 10, 0),
                    onPressed: () {
                      debugPrint('Search');
                    },
                    tooltip: 'Search',
                    icon: const Icon(Icons.search)),
                // separator
                const SizedBox(
                  width: 1,
                  height: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black26),
                  ),
                ),
                IconButton(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    onPressed: () {
                      debugPrint('Profile');
                    },
                    tooltip: 'Profile',
                    color: Colors.deepPurple,
                    icon: const Icon(Icons.account_circle)),
                IconButton(
                    padding: const EdgeInsets.fromLTRB(4, 0, 10, 0),
                    onPressed: () {
                      debugPrint('Settings');
                    },
                    tooltip: 'Settings',
                    color: Colors.indigo,
                    icon: const Icon(Icons.settings)),
              ],
            ),
          ),
        ),
      ),
      // floating action button
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          debugPrint('Add new Item');
        },
        backgroundColor: Colors.black54,
        tooltip: 'Add new Item',
        foregroundColor: Colors.blue,
        hoverColor: Colors.black38,
        child: const Icon(Icons.add),
      ),
      // position the floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
