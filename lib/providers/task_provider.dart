import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.model.dart';

class TaskProvider extends ChangeNotifier{
  List<Task> tasks = [
    Task(title: 'Learn Flutter'),
    Task(title: 'Learn Python'),
    Task(title: 'Learn Node Js'),
  ];
}