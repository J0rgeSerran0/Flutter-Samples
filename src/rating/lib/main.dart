import 'package:flutter/material.dart';
import 'components/rating.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rating',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Rating'),
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
  // first rating object
  final int starLenghtFirst = 10;
  int _ratingFirst = 0;
  // second rating object
  final int starLenghtSecond = 5;
  int _ratingSecond = 0;

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
        child: Column(
          children: [
            const Text(
              'Valoration',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            StarRating(
                mainAxisAlignment: MainAxisAlignment.center,
                lenght: starLenghtFirst,
                rating: _ratingFirst,
                spacing: 0,
                starSize: 28,
                colorEmpty: Colors.white30,
                colorFull: Colors.green,
                iconEmpty: Icons.star_border,
                iconFull: Icons.star_rate,
                onRaitingTap: (rating) {
                  setState(() {
                    _ratingFirst = rating;
                  });
                }),
            Text('Rating: $_ratingFirst / $starLenghtFirst',
                style: const TextStyle(
                  color: Colors.cyan,
                  fontSize: 24,
                )),
            const SizedBox(
              height: 30,
            ),
            StarRating(
                mainAxisAlignment: MainAxisAlignment.center,
                lenght: starLenghtSecond,
                rating: _ratingSecond,
                spacing: 4,
                starSize: 28,
                colorEmpty: const Color.fromARGB(140, 122, 60, 60),
                colorFull: Colors.red,
                iconEmpty: Icons.check_box_outline_blank,
                iconFull: Icons.check_box,
                onRaitingTap: (rating) {
                  setState(() {
                    _ratingSecond = rating;
                  });
                }),
            Text('Rating: $_ratingSecond / $starLenghtSecond',
                style: const TextStyle(
                  color: Colors.cyan,
                  fontSize: 24,
                )),
          ],
        ),
      ),
    );
  }
}
