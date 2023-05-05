import 'package:flutter/material.dart';
import 'Task_Screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(todoey());
}

class todoey extends StatelessWidget {
  const todoey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
