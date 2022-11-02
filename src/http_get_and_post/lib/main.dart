// GetX
// https://pub.dev/packages/get
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

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
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // Initialize an instance of GetConnect
  final connect = GetConnect();
  // To write the response
  final _controller = TextEditingController();

  void sendGetRequest() async {
    final response =
        await connect.get("https://jsonplaceholder.typicode.com/posts/1");

    if (kDebugMode) {
      setState(() {
        _controller.text = "GET ${response.body.toString()}";
      });
    }
  }

  void sendPostRequest() async {
    final response = await connect.post(
      "https://jsonplaceholder.typicode.com/posts",
      {"title": "title test", "body": "body test", "userId": 1},
    );

    if (kDebugMode) {
      setState(() {
        _controller.text = "POST ${response.body}";
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Http Get and Post"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade400,
                    foregroundColor: Colors.black87,
                  ),
                  onPressed: sendGetRequest,
                  child: const Text("GET Request")),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade200,
                    foregroundColor: Colors.black87,
                  ),
                  onPressed: sendPostRequest,
                  child: const Text("POST Request")),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              _controller.text,
              style: TextStyle(color: Colors.blueGrey.shade900),
            )
          ],
        ),
      ),
    );
  }
}
