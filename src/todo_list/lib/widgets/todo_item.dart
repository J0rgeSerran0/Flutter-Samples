import 'package:flutter/material.dart';
import 'package:todo_list/constants/colors.dart';
import 'package:todo_list/model/todoTask.dart';

class ToDoItem extends StatelessWidget {
  final ToDoTask todoTask;
  final dynamic onToDoChanged;
  final dynamic onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todoTask,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        onTap: () {
          onToDoChanged(todoTask);
        },
        visualDensity: const VisualDensity(vertical: 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        tileColor: Colors.white,
        leading: Icon(
          todoTask.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: colorBlueLight,
        ),
        title: Text(
          todoTask.text!,
          style: TextStyle(
            fontSize: 16,
            color: colorBlackLight,
            decoration: todoTask.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: IconButton(
          color: colorGreyLight,
          iconSize: 28,
          tooltip: "Delete Task",
          padding: const EdgeInsets.all(0),
          icon: const Icon(Icons.delete),
          onPressed: () {
            onDeleteItem(todoTask.id);
          },
        ),
      ),
    );
  }
}
