import 'package:flutter/material.dart';
import 'package:stage_two_hng_task/Constants/constants.dart';
import 'package:stage_two_hng_task/compulsory_task/namePrinterFunction.dart';
import 'package:stage_two_hng_task/screens/splash.dart';


void main() {
  runApp(MyApp());
  CompulsoryTask.printName();
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


