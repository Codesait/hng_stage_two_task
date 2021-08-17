import 'package:flutter/material.dart';
import 'package:stage_two_hng_task/widgets/modalITem.dart';

class Sheet{
  static void showSheet(context){
     showModalBottomSheet(
      context: context,
      elevation: 50.0,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: false,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20.0),
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight:  Radius.circular(20)
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HNG INTERNSHIP 8 SPONSORS'),
               const SizedBox(height: 20),

               ModalItem(
                 link: 'https://internship.zuri.team',
                 label: 'HNG INTERNSHIP 8'
               ),
              ModalItem(
                  link: 'https://zuri.team',
                  label: 'Zuri Team'
              )
            ],
          ),
        );
      },
    );
  }



}