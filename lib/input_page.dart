import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import 'icon_content.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      print("The card has been pressed.");
                    },
                    child: ReusableCard(
                        color: Color(0xff1d1e33),
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.mars, label: "MALE")),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      color: Color(0xff1d1e33),
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: "FEMALE")),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: Color(0xff1d1e33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: Color(0xff1d1e33))),
                Expanded(child: ReusableCard(color: Color(0xff1d1e33))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
