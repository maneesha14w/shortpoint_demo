import '../../theme/palette.dart';
import 'package:flutter/material.dart';

class GoProSectionWidget extends StatelessWidget {
  const GoProSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.customGreen,
      width: double.infinity,
      height: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 60),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/trophy.png'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Go Pro (No Ads)",
                          style: Palette.textStyleNormalBlue,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "No fuss, no ads, for only \$1 \n a month",
                          style: Palette.textStyleSubtextBlue,
                        )
                      ],
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            width: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              width: 50,
              height: 50,
              color: Palette.customBlack,
              child: const Center(
                child: Text(
                  " \$1",
                  style: Palette.textStyleSubtextYellow,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
