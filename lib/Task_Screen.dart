import 'package:flutter/material.dart';
import 'Task_Tile.dart';
import 'Task_List.dart';
import 'add_Task_screen.dart';
import 'task.dart';

class TasksScreen extends StatefulWidget {

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  late String newTask;

  Widget buildBottomSheet(BuildContext context){
    return AddTask((newtaskTitle){
       setState(() {
         tasks.add(Task(taskName: newtaskTitle));
       });
       Navigator.pop(context);
    });
  }

  List<Task> tasks = [
    Task(taskName: 'Buy Milk'),
    Task(taskName: 'Buy Egg'),
    Task(taskName: 'sleep'),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(context: context, builder:buildBottomSheet);
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(
            Icons.add,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.list,
                      size: 40.0,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Todoey',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 50.0,
                      color: Colors.white,
                    ),
                  ),
                  Text('${tasks.length} Tasks',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                height: 300.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
                ),
                child: TaskList(tasks),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}




