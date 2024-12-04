import 'package:flutter/material.dart';
import 'package:todo_app/alert_dialog.dart';
import 'package:todo_app/todo_tile.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {


  List toDoList =[
    ['Dar Clases', false],
    [' Ir a la oficina', false]
  ];

  final controller = TextEditingController();

  // Funcion para controlar el checkbox
  void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index][1]= !toDoList[index][1];
    });
}

void createNewTask(){
    showDialog(
        context: context,
        builder: (context){
      return DialogBox(
        controller:controller,
        onSave: saveNewTask,
        onCancel: () => Navigator.of(context).pop(),
      );
    });
}

void saveNewTask(){
    setState(() {
      toDoList.add([controller.text, false]);
      Navigator.of(context).pop();
      controller.clear();
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do'),
        backgroundColor: Colors.yellow.shade200,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
                taskName: toDoList[index][0],
                taskComplete: toDoList[index][1],
              onChanged: (value) {
                checkBoxChanged(value, index);
              },
            );
          },
      ),
        floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
        shape: CircleBorder(eccentricity: 1),
        onPressed: () {
        createNewTask();

        },
    ),
    );
  }
}
