import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Dialog Box',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Form Dialog Box'),
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
  String email = '';
  String comments = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (_) {
                    var emailController = TextEditingController();
                    var commentsController = TextEditingController();
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      title: Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Contact Us',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            CloseButton(
                                color: const Color.fromARGB(255, 131, 126, 126),
                                onPressed: () {
                                  setState(() {
                                    email = '';
                                    comments = '';
                                  });
                                  Navigator.of(context).pop();
                                })
                          ]),
                      content: SizedBox(
                        width: double.maxFinite,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            TextFormField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                hintText: 'Email',
                                // labelText: 'Email',
                                icon: Icon(Icons.email),
                              ),
                            ),
                            TextFormField(
                              controller: commentsController,
                              decoration: const InputDecoration(
                                hintText: 'Comments',
                                icon: Icon(Icons.comment),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              email = emailController.text;
                              comments = commentsController.text;
                            });
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            backgroundColor: Colors.blue,
                            primary: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                          child: const Text('Send'),
                        ),
                      ],
                    );
                  },
                ).then((value) {
                  debugPrint(email);
                  debugPrint(comments);
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                onPrimary: Colors.white,
                shadowColor: Colors.black87,
                padding: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: const Text(
                "Send feedback",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        (email != '' ? Icons.email : null),
                        color: Colors.white,
                      ),
                      const VerticalDivider(
                          width: 10, thickness: 0, indent: 0, endIndent: 0),
                      Text(
                        email,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ])),
            Padding(
                padding: const EdgeInsets.fromLTRB(70, 10, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        (comments != '' ? Icons.comment : null),
                        color: Colors.white,
                      ),
                      const VerticalDivider(width: 10),
                      Text(
                        comments,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ]))
          ],
        ),
      ),
    );
  }
}
