import 'package:flutter/material.dart';
import 'package:todo_app/my_button.dart';

class DialogBox extends StatelessWidget {
  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  final TextEditingController controller;

  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add New Task'
            ),
          ),
            Row(
              children: [
                MyButton(label: 'Save', onPress:onSave,),
                SizedBox(width: 20,),
                MyButton(label: 'Cancel', onPress: onCancel,)
              ],
            ),
          ]
        ),
      ),
    );
  }
}
