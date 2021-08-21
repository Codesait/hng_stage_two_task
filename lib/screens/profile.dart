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
      appBar: AppBar(title: Text('Profile'),backgroundColor: Colors.green,),
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: const EdgeInsets.all(20.0),
        height: size.height,
        width: size.width,
        alignment: Alignment.center,
        child: SingleChildScrollView(
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
              listTile(iconData: Icons.person_outline_rounded, iconColor: Colors.green, value: userName),

              // stack
              listTile(iconData: Icons.work_outline_rounded, iconColor: Colors.purple, value: stack),

              // bio
              listTile(iconData: Icons.account_box_outlined, iconColor: Colors.deepPurpleAccent, value: bio),
              const SizedBox(height: 25.0),

              new CustomButton(
                  fixedSize: Size(size.width,50.0),
                  child: Text('Edit Profile'),
                  radius: 10,
                  onClicked: (){
                    Navigator.pop(context);
                  }
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget listTile({required IconData iconData,required Color iconColor, required String value}){
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Container(
        height: 30,
        margin: const EdgeInsets.all(8.0),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(iconData,size: 20,color: iconColor,),
            SizedBox(width: 20.0,),
            Text(
              value,
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

}