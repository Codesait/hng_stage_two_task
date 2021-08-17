import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stage_two_hng_task/widgets/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  /// will navigate to home screen after 2 seconds
  startTimer(){
    Timer(Duration(seconds: 2), navigator);
  }

  /// navigator methode
  navigator (){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MyHomePage(title: 'Welcome'))
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Center(

        ),
      ),
    );
  }
}

