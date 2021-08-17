import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  ///
  /// [CustomButton] Custom button
  ///

  const CustomButton({
    Key? key,
    this.color,
    this.radius,
    required this.fixedSize,
    required this.child,
    required this.onClicked
  }) : super(key: key);

  final Color? color;
  final Widget child;
  final VoidCallback onClicked;
  final double? radius;
  final Size? fixedSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onClicked,
        child: child,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 20)
          ),
          fixedSize: fixedSize
        ),
    )
    ;
  }
}
