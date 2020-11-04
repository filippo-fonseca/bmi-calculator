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
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, label: "MALE")),
                ),
                Expanded(
                  child: ReusableCard(
                      color: Color(0xff1d1e33),
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, label: "FEMALE")),
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

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80.0),
        SizedBox(height: 15.0),
        Text(label, style: TextStyle(fontSize: 18.0, color: Color(0xff8D8E98))),
      ],
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
