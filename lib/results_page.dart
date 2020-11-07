import 'package:flutter/material.dart';

import "constants.dart";
import 'widgets/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child:
                Container(child: Text("Your result", style: kTitleTextStyle)),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Normal", style: kresultTextstyle),
                  Text("18.3", style: kBMITextStytle),
                  Text("Your BMI result is quite low. you should eat more!",
                      textAlign: TextAlign.center, style: kbodyTextStyle),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
