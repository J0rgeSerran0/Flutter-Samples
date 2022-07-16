import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Dialog Box with 3 buttons',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Alert Dialog Box with 3 buttons'),
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
  showAlertDialogBox(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      onPressed: () => {debugPrint('Cancel'), Navigator.of(context).pop()},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(16.0),
        backgroundColor: Colors.grey,
        primary: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
      child: const Text("Cancel"),
    );
    Widget noButton = TextButton(
      onPressed: () => {debugPrint('No'), Navigator.of(context).pop()},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(16.0),
        backgroundColor: const Color.fromARGB(255, 199, 169, 187),
        primary: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
      child: const Text("No"),
    );
    Widget yesButton = TextButton(
      onPressed: () => {debugPrint('Yes'), Navigator.of(context).pop()},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(16.0),
        backgroundColor: Colors.blue,
        primary: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
      child: const Text("Yes"),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Alert Dialog Box Title with 3 buttons"),
      content: const Text("Alert Dialog Box Text with 3 buttons"),
      actions: [cancelButton, noButton, yesButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(100, 120, 100, 20),
      ),
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialogBox(context);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blueGrey,
            onPrimary: Colors.white,
            shadowColor: Colors.black87,
            padding: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
          child: const Text("Show alert Dialog box with 3 buttons"),
        ),
      ),
    );
  }
}
