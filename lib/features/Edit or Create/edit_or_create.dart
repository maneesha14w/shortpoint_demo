import 'package:flutter/material.dart';
import 'package:shortpoint_demo/theme/palette.dart';

class EditOrCreatePage extends StatelessWidget {
  const EditOrCreatePage({super.key, required navType});
  String navType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.lightBlue,
        title: Text(),
      ),
    );
  }
}
