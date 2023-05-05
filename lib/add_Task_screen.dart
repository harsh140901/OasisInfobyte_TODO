import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {

  final Function addTaskCallback;
  AddTask(this.addTaskCallback);
  late String newtaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0),
            topLeft: Radius.circular(25.0),
          )
        ),
        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'ADD TASK',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newtaskTitle = newText;
              },
            ),
            SizedBox(height: 20.0,),
            Container(
              color: Colors.lightBlueAccent,
              child: TextButton(
                  onPressed:(){
                      addTaskCallback(newtaskTitle);
                  },
                  child: Text('ADD',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0,
                  ),) ),
            )
          ],
        ),
      ),
    );
  }
}
