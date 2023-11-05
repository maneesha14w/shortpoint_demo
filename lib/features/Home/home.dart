import 'package:flutter/material.dart';
import '../../theme/palette.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          color: Palette.lightBlue,
          width: double.infinity,
          height: 130,
          child: const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pfp.png'),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Jhon",
                        style: Palette.textStyleNormal,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'What are your plans\n for today?',
                        style: Palette.textStyleItalic,
                      )
                    ],
                  )
                ]),
          ),
        )
      ]),
    );
  }
}
