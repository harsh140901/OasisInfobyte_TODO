import 'package:flutter/material.dart';
import 'Task_Tile.dart';
import 'task.dart';
import 'Task_Screen.dart';

class TaskList extends StatefulWidget {

  final List<Task> tasks;
  TaskList(this.tasks);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(
          name: widget.tasks[index].taskName,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallback : (bool? checkboxState) {
            if (checkboxState != null) {
              setState(() {
                widget.tasks[index].isDoneCheck();
              });
            }
          }
      );
    },
    itemCount: widget.tasks.length,
    );
  }
}