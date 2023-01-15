import 'package:flutter/material.dart';

import 'package:todo_list/constants/colors.dart';
import 'package:todo_list/model/todoTask.dart';
import 'package:todo_list/widgets/todo_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDoTask.tasks();
  List<ToDoTask> _todoTasks = [];
  final _todoController = TextEditingController();
  late FocusNode _textFieldFocusNode;

  @override
  void initState() {
    _todoTasks = todosList;
    super.initState();

    _textFieldFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _textFieldFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 4,
            ),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Text(
                          'My Tasks (${todosList.where((x) => !x.isDone).length.toString()})',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      addNewItem(),
                      for (ToDoTask todoTask in _todoTasks.reversed)
                        ToDoItem(
                          todoTask: todoTask,
                          onToDoChanged: _handleToDoChange,
                          onDeleteItem: _deleteToDoItem,
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleToDoChange(ToDoTask todoTask) {
    setState(() {
      todoTask.isDone = !todoTask.isDone;
      debugPrint(todoTask.text);
      FocusScope.of(context).requestFocus(_textFieldFocusNode);
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
      FocusScope.of(context).requestFocus(_textFieldFocusNode);
    });
  }

  void _addToDoItem(String taskText) {
    if (taskText.isNotEmpty) {
      setState(() {
        todosList.add(ToDoTask(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          text: taskText,
        ));
        FocusScope.of(context).requestFocus(_textFieldFocusNode);
      });
    }
    _todoController.clear();
  }

  void _runFilter(String enteredKeyword) {
    List<ToDoTask> results = [];
    if (enteredKeyword.isEmpty) {
      results = todosList;
    } else {
      results = todosList
          .where((item) =>
              item.text!.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _todoTasks = results;
    });
  }

  Widget addNewItem() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              right: 10,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              autofocus: true,
              focusNode: _textFieldFocusNode,
              controller: _todoController,
              onSubmitted: (value) {
                _addToDoItem(_todoController.text);
              },
              decoration: const InputDecoration(
                  hintText: 'Add a new task', border: InputBorder.none),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            _addToDoItem(_todoController.text);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: colorBlueLight,
            minimumSize: const Size(60, 60),
            elevation: 10,
          ),
          child: const Text(
            '+',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ]),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        onChanged: (value) => _runFilter(value),
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: colorBlackLight,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: colorBlackLight),
        ),
      ),
    );
  }
}
