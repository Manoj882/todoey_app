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
          final task = taskData.tasks[index];
          return TasksTile(
            taskTitle: task.title,
            isChecked: task.isDone,
            checkBoxCallBack: (checkBoxState){
              taskData.updateTask(task);
            },
          );
        },
      );
        
      },
      
    );
  }
}
