import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task.model.dart';
import 'package:todoey_app/providers/task_provider.dart';
import 'package:todoey_app/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

 
  
  @override
  Widget build(BuildContext context) {

    return Consumer<TaskProvider>(
      builder: (context, taskData, child) {
        return ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index) {
          return TasksTile(
            taskTitle: taskData.tasks[index].title,
            isChecked: taskData.tasks[index].isDone,
            checkBoxCallBack: (checkBoxState){
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            },
          );
        },
      );
        
      },
      
    );
  }
}
