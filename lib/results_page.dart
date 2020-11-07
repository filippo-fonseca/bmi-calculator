import 'package:flutter/material.dart';

import "constants.dart";
import 'widgets/reusable_card.dart';
import "input_page.dart";

double bottomContainerOpacity = 1;

class ResultsPage extends StatefulWidget {
  ResultsPage({this.bmiResult, this.resultText, this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
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
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text("Your result", style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.resultText, style: kresultTextstyle),
                  Text(widget.bmiResult, style: kBMITextStytle),
                  Text(widget.interpretation,
                      textAlign: TextAlign.center, style: kbodyTextStyle),
                ],
              ),
            ),
          ),
          GestureDetector(
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
          )
        ],
      ),
    );
  }
}
