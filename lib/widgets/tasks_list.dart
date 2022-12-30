import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.model.dart';
import 'package:todoey_app/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    required this.tasks,
    super.key});

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TasksTile(
          taskTitle: widget.tasks[index].title,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallBack: (checkBoxState){
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
