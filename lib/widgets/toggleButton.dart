import 'package:flutter/material.dart';

import 'package:toggle_switch/toggle_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ToggleButton extends StatefulWidget {
  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  var toggleValue = false;

  void toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ToggleButtons(
        children: <Widget>[
          Icon(Icons.check),
          Icon(Icons.cancel)
        ],
      ),
    );
  }
}
