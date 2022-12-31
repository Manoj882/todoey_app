import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/provider_example.dart';
import 'package:todoey_app/providers/task_provider.dart';
import 'package:todoey_app/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TasksScreen(),
      ),
    );
  }

  // for provider exmaple
  //this data variable is used for showing without Provider
  // final String data = 'New Data';
  // @override
  // Widget build(BuildContext context) {
  //   // return Provider<String>(
  //   //   create: (context) => data,
  //   return ChangeNotifierProvider(
  //     create: (context) => Data(),
  //     child: MaterialApp(
  //         title: 'Flutter Demo',
  //         theme: ThemeData(
  //           primarySwatch: Colors.blue,
  //         ),
  //         home: ProviderExample(),
  //       ),
    
  //   );
  // }
}

