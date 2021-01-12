import 'package:flutter/material.dart';
import 'package:wasty/pages/index.dart';

import 'package:wasty/pages/settings.dart';
import 'package:wasty/pages/stats.dart';
import 'package:wasty/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        title: 'Wasty',
        theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.green,
          fontFamily: 'Roboto',
        ),
        home: IndexPage(),
    );
  }
}
