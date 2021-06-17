import 'package:flutter/material.dart';
import 'package:flutter_todoey/model/task.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function() deleteTaskCallback;

  TasksTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback,
      required this.deleteTaskCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListTile(
        onLongPress: deleteTaskCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
