import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stage_two_hng_task/screens/homeScreen.dart';

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
    Timer(Duration(seconds: 3), navigator);
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
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(
                'assets/images/hng_logo.png',
                height: 200,
                width: size.width/1.8,
              ),
              const SizedBox(height: 50),

              Text(
                'Partners with',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4
                ),
              ),
              const SizedBox(height: 5),

              Image.asset(
                'assets/images/zuri_training.png',

                width: size.width/1.8,
              ),

            ],
          ),
        ),

    );
  }
}

