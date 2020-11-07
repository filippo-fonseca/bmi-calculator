import 'package:flutter/material.dart';

import "constants.dart";
import 'widgets/reusable_card.dart';

double bottomContainerOpacity = 1;

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
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
          ),
          Opacity(
            opacity: bottomContainerOpacity,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  bottomContainerOpacity = 0.6;
                  print("The user has tapped the CALCULATE button.");
                  Navigator.pop(context);
                });
              },
              child: Container(
                color: kbottomContainerColor,
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                height: kbottomContainerHeight,
                child: Center(
                  child: Text(
                    "RECALCULATE YOUR BMI",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
