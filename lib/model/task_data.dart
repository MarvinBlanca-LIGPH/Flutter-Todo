import 'package:flutter/foundation.dart';
import 'package:flutter_todoey/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
  ];

  void addTask(String newTask) {
    _taskList.add(Task(name: newTask));
    notifyListeners();
  }

  void toggleDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }

  int get taskCount {
    return _taskList.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_taskList);
  }
}
