import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addCallback;

  AddTaskScreen(this.addCallback);

  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (currentText) {
                newTask = currentText;
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              onPressed: () {
                addCallback(newTask);
              },
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
