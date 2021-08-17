import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    this.bio,
    this.stack,
    this.age,
    this.userName
  }) : super(key: key);


 final String? userName;
 final String? age;
 final String? stack;
 final String? bio;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/avatar.jpeg'
                      )
                    ),
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
