import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ModalItem extends StatelessWidget {
  const ModalItem({Key? key,
    required this.label,
    required this.link
  }) : super(key: key);

  final String link;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: InkWell(
        onTap: ()=>_launchURL(link),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor)
          ),
          child: Text(label,style: TextStyle(fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }

  void _launchURL(url) async {
    await canLaunch(url) 
        ? await launch(url) 
        : throw 'Could not launch $url';
  }
}
