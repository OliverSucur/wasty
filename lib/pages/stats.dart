import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "You are 13% better than the average human",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Image(
              width: 250.0,
              image: AssetImage('assets/earth.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 25, 0, 0),
                child: Text(
                  "30 people could feed on your \ndiscarded food in one day",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 25, 20, 0),
                child: Text(
                  "The wood you throw away quates \nto 20 kilograms of CO2",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
