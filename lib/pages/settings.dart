import 'package:flutter/material.dart';
import 'package:wasty/widgets/toggleButton.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          Card(
            child: Row(
              children: <Widget>[
                Text("Enable Notifications"),
                IconButton(
                  icon: Icon(Icons.check),
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              children: <Widget>[
                Text("Enable Notifications"),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
