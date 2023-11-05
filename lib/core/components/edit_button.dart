import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../features/Edit or Create/edit_or_create.dart';
import '../providers/todo_providers.dart';

class EditButtonWidget extends StatelessWidget {
  const EditButtonWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TodoProvider>().isEditToggleMethod(true);
        context.read<TodoProvider>().selectedIndex = index;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditOrCreatePage()),
        );
      },
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.all(2.0),
          child: SizedBox(
            width: 40,
            child: Center(child: Text("Edit")),
          ),
        ),
      ),
    );
  }
}
