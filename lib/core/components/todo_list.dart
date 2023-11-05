import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shortpoint_demo/core/components/edit_button.dart';
import 'package:shortpoint_demo/core/providers/todo_providers.dart';
import 'package:shortpoint_demo/theme/palette.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: context.watch<TodoProvider>().todoList.length,
        prototypeItem: ListTile(
          title: Text(context.watch<TodoProvider>().todoList.first.todo),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: IconButton(
              icon: context.watch<TodoProvider>().todoList[index].isComplete
                  ? const Icon(
                      Icons.check,
                    )
                  : const Icon(Icons.circle),
              onPressed: () {
                context.read<TodoProvider>().toggleComplete(
                    context.read<TodoProvider>().todoList[index]);
              },
            ),
            title: Text(context.watch<TodoProvider>().todoList[index].todo,
                style: context.watch<TodoProvider>().todoList[index].isComplete
                    ? Palette.textStyleStrike
                    : Palette.textStyleNoStrike),
            trailing: const EditButtonWidget(),
          );
        },
      ),
    );
  }
}
