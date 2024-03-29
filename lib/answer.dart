import 'package:flutter/material.dart';

// custom answer widget
class Answer extends StatelessWidget{
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  //final String answerQuestion;
  //StatelessWidget(this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }

}