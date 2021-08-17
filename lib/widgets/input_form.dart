
import 'package:flutter/material.dart';

class AbitInputForm extends StatefulWidget {
  const AbitInputForm({
    Key? key,
    required this.onSaved,
    this.color,
    this.hintText,
    this.label,
    this.maxLines,
    required this.inputType,
    this.suffix
  }) : super(key: key);

  final String? hintText;
  final Color? color;
  final ValueChanged onSaved;
  final String? label;
  final int? maxLines;
  final TextInputType inputType;
  final Widget? suffix;

  @override
  _AbitInputFormState createState() => _AbitInputFormState();
}

class _AbitInputFormState extends State<AbitInputForm> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Visibility(
          visible: widget.label == null ? false : true,
          child: Text(widget.label ?? '',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)
          ),
        ),

        const SizedBox(height: 8.0),

        TextFormField(
          keyboardType: TextInputType.text,
          autofocus: false,
          cursorColor:Theme.of(context).accentColor,
          textInputAction: TextInputAction.done,
          maxLines: widget.maxLines ?? 1,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w600
          ),
          decoration: InputDecoration(
            fillColor: widget.color,
            filled: true,
            suffix: widget.suffix,
            contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 23.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            focusColor: Colors.deepPurpleAccent,
            labelStyle: TextStyle(
                color: Colors.deepPurpleAccent
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),

            ),

          ),
          onSaved: widget.onSaved,
          validator: (value) {
            if(value == null) {
              return 'Field cannot be empty';
            }
            return null;
          },
        ),
      ],
    );
  }
}
