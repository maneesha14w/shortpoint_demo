import 'package:flutter/material.dart';
import 'package:shortpoint_demo/theme/palette.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Palette.lightBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              fixedSize: const Size(double.infinity, 48)),
          onPressed: () {
            Navigator.pop(context);
          },
          child:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Done",
              style: Palette.textStyleNormal,
            )
          ]),
        ),
      ),
    );
  }
}
