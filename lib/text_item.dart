import 'package:flutter/material.dart';

class TextBlueItem extends Text {
  final String textValue;

  TextBlueItem({
    @required this.textValue,
  }) : super(
          textValue,
          style: TextStyle(
            color: Colors.blue[400],
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        );
}

class TextItem extends Text {
  final String textValue;

  TextItem({
    @required this.textValue,
  }) : super(
          textValue,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12.0,
          ),
        );
}
