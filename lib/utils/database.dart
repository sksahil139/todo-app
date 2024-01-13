import 'package:hive_flutter/hive_flutter.dart';

class toDoDatabase{
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData(){
    toDoList = [
      ["click on the + button to add task",false],
      ["left swap to delete the task",false],
    ];
  }

  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }

}