import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  TasksTile({
    required this.taskTitle,
    required this.isChecked,
    required this.checkBoxCallBack,
    required this.longPressCallBack,
    super.key});

  final String taskTitle;
  final bool isChecked;
  final void Function(bool?)? checkBoxCallBack;
  final void Function()? longPressCallBack;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}


