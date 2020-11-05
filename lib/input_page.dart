import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import 'widgets/icon_content.dart';
import 'widgets/reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);
const bottomContainerColor = Color(0xffeb1555);
double bottomContainerOpacity = 1;

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(GenderType gender) {
    // male card was pressed:
    if (gender == GenderType.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
      // female card was pressed:
    } else if (gender == GenderType.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(GenderType.male);
                      });
                    },
                    child: ReusableCard(
                        color: maleCardColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.mars, label: "MALE")),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(GenderType.female);
                      });
                    },
                    child: ReusableCard(
                        color: femaleCardColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus, label: "FEMALE")),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: activeCardColor)),
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
                color: bottomContainerColor,
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                height: bottomContainerHeight,
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
