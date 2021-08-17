import 'package:flutter/material.dart';
import 'package:stage_two_hng_task/widgets/button.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.bio,
    required this.stack,
    required this.age,
    required this.userName
  }) : super(key: key);


 final String userName;
 final String age;
 final String stack;
 final String bio;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // avatar widget
                Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/avatar.jpeg'
                      )
                    ),
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                ),
                const SizedBox(height: 25.0),

                // name
                listTile(leadingText: 'Name', value: userName),

                // age
                listTile(leadingText: 'Age', value: age),

                // stack
                listTile(leadingText: 'Stack', value: stack),

                // bio
                listTile(leadingText: 'Bio', value: bio),
                const SizedBox(height: 25.0),

                new CustomButton(
                    fixedSize: Size(size.width,50.0),
                    child: Text('Edit Profile'),
                    onClicked: (){
                      Navigator.pop(context);
                    }
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listTile({required String leadingText, required String value}){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: ListTile(
        
        leading: Text(
          '$leadingText:',
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
        ),
        title: Text(
          value,
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

}
