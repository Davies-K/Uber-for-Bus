import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:project_lyd/widgets/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project_Lyd',
      // theme: ThemeData(fontFamily: 'RobotoMono'),
      home: HomeScreen(),
      
    );
  }
}

