import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/providers/todo_providers.dart';
import '../../theme/palette.dart';

import '../../core/components/go_pro_section.dart';
import '../../core/components/greetings_appbar.dart';
import '../../core/components/todo_list.dart';
import '../Edit or Create/edit_or_create.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<TodoProvider>().isEditToggleMethod(false);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EditOrCreatePage()),
          );
        },
        backgroundColor: Palette.darkBlue,
        child: const Icon(Icons.add),
      ),
      body: const SingleChildScrollView(
        child: Column(children: [
          GreetingAppBarWidget(),
          GoProSectionWidget(),
          TodoListWidget(),
        ]),
      ),
    );
  }
}
