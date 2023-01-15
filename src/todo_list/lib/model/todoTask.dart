class ToDoTask {
  String? id;
  String? text;
  bool isDone;

  ToDoTask({
    required this.id,
    required this.text,
    this.isDone = false,
  });

  static List<ToDoTask> tasks() {
    return [];
  }
}
