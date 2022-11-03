import 'package:flutter/material.dart';
import 'helpers/snakbarMessageHelper.dart';
import 'helpers/sqlHelper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(title: "Sqlite Sample"));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _items = [];

  bool _isLoading = true;

  void _refreshItems() async {
    final data = await SqlHelper.getAllItems();
    setState(() {
      _items = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshItems();
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  // Function to be triggered when:
  // - The floating button is pressed
  // - You want to update an item
  void _showForm(int? id) async {
    if (id != null) {
      // id == null => Create new Item
      // id != null => Update an existing Item
      final existingItem = _items.firstWhere((element) => element["id"] == id);
      _titleController.text = existingItem["title"];
      _descriptionController.text = existingItem["description"];
    } else {
      // Clear the text fields
      _titleController.text = "";
      _descriptionController.text = "";
    }

    showModalBottomSheet(
        context: context,
        // elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
              padding: const EdgeInsets.only(
                  left: 32, top: 16, right: 32, bottom: 16),
              // padding: EdgeInsets.only(
              //   top: 12,
              //   left: 12,
              //   right: 12,
              //   // this will prevent the soft keyboard from covering the text fields
              //   bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              // ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(hintText: "Title"),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(hintText: "Description"),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Add a new Item
                      if (id == null) {
                        await _addItem();
                      }

                      // Update an existing Item
                      if (id != null) {
                        await _updateItem(id);
                      }

                      // Close the bottom sheet
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? "Create New" : "Update"),
                  )
                ],
              ),
            ));
  }

// Insert a new journal to the database
  Future<void> _addItem() async {
    SqlHelper.createItem(_titleController.text, _descriptionController.text);
    SnakBarMessageHelper.SendMessage(
        context,
        "Item successfully inserted!",
        const Color.fromARGB(255, 178, 226, 138).withOpacity(0.8),
        Colors.black);
    _refreshItems();
  }

  // Update an existing journal
  Future<void> _updateItem(int id) async {
    SqlHelper.updateItemBy(
        id, _titleController.text, _descriptionController.text);
    SnakBarMessageHelper.SendMessage(
        context,
        "Item with id $id successfully updated!",
        const Color.fromARGB(255, 218, 206, 98).withOpacity(0.8),
        Colors.black);
    _refreshItems();
  }

  // Delete an item
  void _deleteItem(int id) async {
    SqlHelper.deleteItem(id);
    SnakBarMessageHelper.SendMessage(
        context,
        "Item with id $id successfully deleted!",
        const Color.fromARGB(255, 226, 138, 138).withOpacity(0.8),
        Colors.white);
    _refreshItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(100, 120, 100, 20),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) => Card(
                color: const Color.fromARGB(255, 104, 171, 192),
                margin: const EdgeInsets.all(12),
                child: ListTile(
                    title: Text(_items[index]["title"]),
                    subtitle: Text(_items[index]["description"]),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => _showForm(_items[index]["id"]),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteItem(_items[index]["id"]),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 104, 171, 192),
        onPressed: () => _showForm(null),
        child: const Icon(Icons.add),
      ),
    );
  }
}
