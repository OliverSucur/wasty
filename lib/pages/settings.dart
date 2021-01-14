import 'package:flutter/material.dart';

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
                Container(
                  margin: EdgeInsets.fromLTRB(150, 0, 0, 0),
                    child: IconButton(
                    icon: Icon(Icons.check),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              children: <Widget>[
                Text("Notifications time in advance"),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(80, 0, 0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                        hintText: 'Days',
                      ),
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
