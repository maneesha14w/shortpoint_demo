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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.lightBlue,
        title: Text(
            context.read<TodoProvider>().isEdit ? 'Add new Todo' : 'Edit Task'),
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
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: context.read<TodoProvider>().isEdit
                        ? text_controller.text = ''
                        : '',
                  ),
                ),
              ),
            ),
            const Spacer(),
            const DoneButton(),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
