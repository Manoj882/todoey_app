import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  const TasksTile({super.key});

  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  void checkBoxCallBack(bool? checkBoxState) {
    setState(() {
      isChecked = checkBoxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TasksCheckBox(
        checkBoxState: isChecked,
        toggleCheckBoxState: checkBoxCallBack,
      ),
    );
  }
}

class TasksCheckBox extends StatelessWidget {
  const TasksCheckBox({
    required this.checkBoxState,
    required this.toggleCheckBoxState,
    super.key,
  });

  final bool checkBoxState;
  final void Function(bool?)? toggleCheckBoxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
