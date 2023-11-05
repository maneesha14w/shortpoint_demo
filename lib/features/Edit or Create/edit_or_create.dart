import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shortpoint_demo/theme/palette.dart';

import '../../core/providers/todo_providers.dart';

class EditOrCreatePage extends StatelessWidget {
  const EditOrCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.lightBlue,
        title: Text(
            context.read<TodoProvider>().isEdit ? 'Add new Todo' : 'Edit Task'),
      ),
    );
  }
}
