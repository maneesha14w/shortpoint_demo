import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shortpoint_demo/core/components/done_btn.dart';
import 'package:shortpoint_demo/theme/palette.dart';

import '../../core/providers/todo_providers.dart';

class EditOrCreatePage extends StatefulWidget {
  const EditOrCreatePage({super.key});

  @override
  State<EditOrCreatePage> createState() => _EditOrCreatePageState();
}

class _EditOrCreatePageState extends State<EditOrCreatePage> {
  var text_controller = TextEditingController();

  @override
  void dispose() {
    text_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var todoProvider = Provider.of<TodoProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.lightBlue,
        title: Text(todoProvider.isEdit ? 'Edit Task' : 'Add new Todo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Task Name'),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  controller: text_controller,
                  decoration: InputDecoration(
                    labelText: todoProvider.isEdit
                        ? text_controller.text = todoProvider
                            .todoList[todoProvider.selectedIndex - 1].todo
                        : '',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Palette.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fixedSize: const Size(double.infinity, 48)),
                onPressed: () {
                  if (todoProvider.isEdit) {
                    context.read<TodoProvider>().editTodo(
                        text_controller.text,
                        context
                            .read<TodoProvider>()
                            .todoList[todoProvider.selectedIndex - 1]);
                  } else {
                    context.read<TodoProvider>().createTodo(
                          text_controller.text,
                        );
                  }
                  Navigator.pop(context);
                },
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Done",
                        style: Palette.textStyleNormal,
                      )
                    ]),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
