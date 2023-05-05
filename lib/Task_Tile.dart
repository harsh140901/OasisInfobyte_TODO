import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget {
  late bool isChecked;
  late String name ;
  final Function checkBoxCallback;
  TaskTile({required this.name,required this.isChecked,required this.checkBoxCallback});

@override
Widget build(BuildContext context) {
  return ListTile(
    title: Text(name,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
        fontSize: 20.0,
      ),
    ),
    trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (newValue){
        checkBoxCallback(newValue);
      },
    ),
  );
}
}



