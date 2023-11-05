import 'package:flutter/material.dart';
import 'package:shortpoint_demo/theme/palette.dart';

class EditButtonWidget extends StatelessWidget {
  const EditButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
