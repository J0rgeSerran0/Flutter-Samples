import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool passwordNoVisible = true;

  @override
  void initState() {
    username.text = "";
    password.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: Colors.lightGreen.shade400,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                  controller: username,
                  decoration: const InputDecoration(
                    labelText: "Username",
                    icon: Icon(Icons.person),
                  )),
              TextField(
                  controller: password,
                  obscureText: passwordNoVisible,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.lock),
                    labelText: "Password",
                    suffix: InkWell(
                      onTapDown: (details) {
                        setState(() {
                          passwordNoVisible = false;
                        });
                      },
                      onTapUp: (details) {
                        setState(() {
                          passwordNoVisible = true;
                        });
                      },
                      child: Icon(
                        passwordNoVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
