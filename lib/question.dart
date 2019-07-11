import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28, fontStyle: FontStyle.normal),
          textAlign: TextAlign.center,
        ));
  }
}
