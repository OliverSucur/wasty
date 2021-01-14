import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:wasty/pages/index.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

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
