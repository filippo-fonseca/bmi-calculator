import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import 'constants.dart';
import 'widgets/icon_content.dart';
import 'widgets/reusable_card.dart';

double bottomContainerOpacity = 1;

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  GenderType selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                      },
                      color: selectedGender == GenderType.male
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, label: "MALE")),
                ),
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      color: selectedGender == GenderType.female
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: "FEMALE")),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                color: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT", style: klabelTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberStyle,
                        ),
                        Text("cm", style: klabelTextStyle),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xffeb1555),
                      inactiveColor: Color(0xff8d8e98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: kactiveCardColor)),
                Expanded(child: ReusableCard(color: Color(0xff1d1e33))),
              ],
            ),
          ),
          Opacity(
            opacity: bottomContainerOpacity,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  bottomContainerOpacity = 0.6;
                  print("The user has tapped the CALCULATE button.");
                });
              },
              child: Container(
                color: kbottomContainerColor,
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                height: kbottomContainerHeight,
                child: Center(
                  child: Text(
                    "CALCULATE",
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
