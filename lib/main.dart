import 'package:flutter/material.dart';
import 'package:stage_two_hng_task/Constants/constants.dart';
import 'package:stage_two_hng_task/screens/splash.dart';

void main() {
  runApp(MyApp());
  printName();
}

/// [printName] is a simple function for printing my name
void printName() {
  print('My name is $DEV_NAME');
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SplashScreen(),
    );
  }
}


