import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

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
                  child: ReusableCard(
                      color: Color(0xff1d1e33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.mars, size: 80.0),
                          SizedBox(height: 15.0),
                          Text("MALE",
                              style: TextStyle(
                                  fontSize: 18.0, color: Color(0xff8D8E98))),
                        ],
                      )),
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xff1d1e33)),
                )
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

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild});
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
