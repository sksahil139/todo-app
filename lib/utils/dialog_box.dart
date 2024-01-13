import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
          height: 160,
          child: Padding(
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Column(
              children: [
                TextFormField(
                  controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter task",
                    labelText: "task",
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: ElevatedButton(onPressed: () {
                        Navigator.of(context).pop();
                      }, 
                      child: const Text("cancel")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                      child: ElevatedButton(
                        onPressed: onSave,
                        child: const Text("add to-do"),
                      ),
                      ), 
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}