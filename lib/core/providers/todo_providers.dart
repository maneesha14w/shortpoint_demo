import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoProvider extends ChangeNotifier {
  var todoList = [
    Todo(todo: 'Training at the gym', isComplete: false, id: 1),
    Todo(todo: 'Play paddle with friends', isComplete: false, id: 2),
    Todo(todo: 'Burger BBQ with family', isComplete: false, id: 3),
  ];

  void toggleComplete(Todo switchTodo) {
    for (Todo todo in todoList) {
      if (todo == switchTodo) {
        todo.isComplete = !todo.isComplete;
        notifyListeners();
      }
    }
  }
}
