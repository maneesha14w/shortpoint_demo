// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Todo {
  String todo;
  bool isComplete;
  int id;
  Todo({
    required this.todo,
    required this.isComplete,
    required this.id,
  });

  Todo copyWith({
    String? todo,
    bool? isComplete,
    int? id,
  }) {
    return Todo(
      todo: todo ?? this.todo,
      isComplete: isComplete ?? this.isComplete,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'todo': todo,
      'isComplete': isComplete,
      'id': id,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      todo: map['todo'] as String,
      isComplete: map['isComplete'] as bool,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) =>
      Todo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Todo(todo: $todo, isComplete: $isComplete, id: $id)';

  @override
  bool operator ==(covariant Todo other) {
    if (identical(this, other)) return true;

    return other.todo == todo &&
        other.isComplete == isComplete &&
        other.id == id;
  }

  @override
  int get hashCode => todo.hashCode ^ isComplete.hashCode ^ id.hashCode;
}
