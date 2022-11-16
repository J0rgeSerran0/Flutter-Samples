import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // LinkedId Image
  Uint8List linkedInDecodedBytes = base64.decode(
      "iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAMAAABiM0N1AAABAlBMVEUAAAAAZswAgKoAbbYAebYAfbgAerQAfbUAe7cAerUAerYAe7UAe7YAercAerYAe7YAe7UAe7YAe7YAe7cAe7YAe7YAe7YAe7YAe7YAe7YAe7YAe7YAe7YAe7YBfLYCfLcEfbcFfrcIf7gJgLkKgLkLgbkNgroOgroUhbwijcAmj8EpkMIrkcItksMzlcU6mcc7msdAnMhBnclTps5WqM9frNFjrtJmsNNwtdZzt9eMw96UyOCVyOGby+KczOOl0OWz2Om32uq+3ezA3u3E4O7F4e7M5fDP5vHS6PLV6fPd7fXk8ffx+Pvy+Pvz+fz0+fz4+/36/P77/f79/v7+/v/////G3bPWAAAAHXRSTlMABQYHKissLY2OkJGTlJaXu7y9vtPU1fHy8/T8/WR5urYAAAABYktHRFWTBLgzAAABRUlEQVRYw+3YWU/CQBAH8KUcAgXPokBZBamKIPW+wdt6i6L7/b+KezXqozvzYJr9P01nk1/SzaRphhCeCbdSp4apV4o5opKebFBQ/LIjnTkKzqyQpihCSvx+GhiQnyUuRUmBzONAHqnhQFVCkWKh5EAH9y+3OwjQMeP52AZDzZGA2A0Y6kqHPYOh5XcJ3cHvaCChfTjUPh2z1yOUOWp3m4mc7CBU4WVHVT3ZX+8Ff4NCNUeMl4eqini5+8in/XoPCrXOdfNyDQS1LlicKIBAA/adIQB6++Gwz7459DtDLOhpEQCd9Vc3r+KHjjl0IvpLsbRhDI1X5MGWPgiNoQf9TQBDkT6xkIUslGzI/mdbyEL/GariOAt4K40iDpQnOR9l7ZMhpIwBuXyj5czAnemUWLI5JeDb+W5K7/2yBc94jVTz8hlhfAHtfsy9MieXWQAAAABJRU5ErkJggg==");
  // Twitter Image
  Uint8List twitterDecodeBytes = base64.decode(
      "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");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Load Base64 Image"),
          backgroundColor: Colors.amber.shade600,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Image.memory(
              linkedInDecodedBytes,
              fit: BoxFit.cover,
            ),
            // Separator
            const SizedBox(
              height: 10,
            ),
            Image.memory(
              twitterDecodeBytes,
              fit: BoxFit.cover,
              height: 32,
              width: 32,
            ),
          ]),
        ));
  }
}
