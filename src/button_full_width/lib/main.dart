import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      color: Colors.amber,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Button Full Width',
        ),
      ),
      body: Padding(
        // padding: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          children: [
            // With SizeBox as Container
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown.shade400,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text('Using SizeBox and ElevatedButton'),
                )),
            // Separator
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    foregroundColor: Colors.black54,
                  ),
                  icon: const Icon(Icons.domain),
                  label: const Text('Using SizeBox and TextButton')),
            ),
            // Separator
            const SizedBox(
              height: 10,
            ),
            // With a Container directly
            Container(
              width: double.infinity,
              child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.adjust),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.amber,
                  ),
                  label: const Text("Using Container")),
            ),
            // Separator
            const SizedBox(
              height: 10,
            ),
             MaterialButton(
                minWidth: double.infinity,
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {},
                child: const Text('Using MaterialButton')
             ),
          ],
        ),
      ),
    );
  }
}
