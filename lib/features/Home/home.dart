import 'package:flutter/material.dart';
import 'package:shortpoint_demo/theme/palette.dart';
import '../../core/components/greetings_appbar.dart';
import '../../core/components/go_pro_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: createTodo(),
        backgroundColor: Palette.darkBlue,
        child: const Icon(Icons.add),
      ),
      body: const Column(children: [
        GreetingAppBarWidget(),
        GoProSectionWidget(),
      ]),
    );
  }

  createTodo() {}
}
