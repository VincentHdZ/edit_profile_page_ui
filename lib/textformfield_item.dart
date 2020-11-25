import 'package:flutter/material.dart';

class TextFormFieldItem extends TextFormField {
  final String initialValue;
  final String hintText;
  final TextInputType inputType;

  TextFormFieldItem(
      {@required this.initialValue,
      @required this.hintText,
      @required this.inputType})
      : super(
          keyboardType: inputType,
          initialValue: initialValue,
          decoration: InputDecoration(
            hintText: hintText,
            focusedBorder: UnderlineInputBorder(
              borderSide: new BorderSide(
                color: Colors.blue,
              ),
            ),
            border: new UnderlineInputBorder(
              borderSide: new BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        );
}
