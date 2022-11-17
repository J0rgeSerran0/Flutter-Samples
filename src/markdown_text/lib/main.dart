import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(const MyApp());
}

const String markdownString = """# Title

## SubTitle

### Third Title

#### Fourth Title

Normal text...

**bold text** *cursive text*

`List`

  * One
  * Two

  [Flutter link](https://flutter.dev/)

  [**`Google link`**](https://google.com/)

  |One||Three|
|--|--|--|
|**One 1**|`text 1`|*Three text for 1*|
|**One 2**|`text 2`|*Three text for 2*|

| section text
""";

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Markdown text"),
          backgroundColor: Colors.greenAccent.shade100,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(children: const [
            // Separator
            SizedBox(
              height: 10,
            ),
            // Show the markdown text
            MarkdownBody(data: markdownString),
          ]),
        ));
  }
}
