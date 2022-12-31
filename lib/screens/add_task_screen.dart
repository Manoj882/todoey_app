import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task.model.dart';
import 'package:todoey_app/providers/task_provider.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});

  TextEditingController newTextTitleController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    String? newTextTitle;

    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: newTextTitleController,
              autofocus: true,
              onChanged: (value){
                 newTextTitle = value;   
              },
              onSubmitted: (value){
                if(newTextTitle == null){return;}
                Provider.of<TaskProvider>(context, listen: false).addTask(newTextTitle!);
                Navigator.pop(context);
              },
              
              
          
              // onEditingComplete: (){
              //   newTextTitle = newTextTitleController.text;
              // },
              
              
            
            ),

           
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
              onPressed: () {
                if(newTextTitle == null) {return;}
                Provider.of<TaskProvider>(context, listen: false).addTask(newTextTitle!);
                
                Navigator.pop(context);

                
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
