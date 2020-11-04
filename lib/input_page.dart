import 'package:flutter/material.dart';

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
                  child: ReusableCard(color: Color(0xff1d1e33)),
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
  ReusableCard({@required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
