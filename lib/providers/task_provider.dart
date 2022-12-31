import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.model.dart';

class TaskProvider extends ChangeNotifier{
  List<Task> _tasks = [
    Task(title: 'Learn Flutter'),
    Task(title: 'Learn Python'),
    Task(title: 'Learn Node Js'),
  ];

  // List<Task> get tasks => _tasks;
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTextTitle){
    final task = Task(title: newTextTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}