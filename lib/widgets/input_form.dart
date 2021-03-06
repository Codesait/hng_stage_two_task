
import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({
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
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {

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
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400
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
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Colors.purple,
              ),
            ),

          ),
          onSaved: widget.onSaved,
          validator: (value) {
            if(value!.length == 0) {
              return 'Field cannot be empty';
            }
            return null;
          },
        ),
      ],
    );
  }
}
