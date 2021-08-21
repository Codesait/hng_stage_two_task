import 'package:flutter/material.dart';
import 'package:stage_two_hng_task/widgets/bottomSheet.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({Key? key,required this.size}) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: size.height/5.5,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.2)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/hng_logo.png',
              width: size.width / 1.8,
            ),
            const SizedBox(height: 20),

            InkWell(
              onTap: ()=> Sheet.showSheet(context),
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15.0)
                ),
                child: Icon(
                  Icons.link,
                  size: 14.0,
                  color: Colors.white,
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}