import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task.model.dart';
import 'package:todoey_app/providers/task_provider.dart';
import 'package:todoey_app/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

 
  
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: Provider.of<TaskProvider>(context).tasks.length,
      itemBuilder: (context, index) {
        return TasksTile(
          taskTitle: Provider.of<TaskProvider>(context).tasks[index].title,
          isChecked: Provider.of<TaskProvider>(context).tasks[index].isDone,
          checkBoxCallBack: (checkBoxState){
            // setState(() {
            //   widget.tasks[index].toggleDone();
            // });
          },
        );
      },
    );
  }
}
