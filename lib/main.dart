import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';
import './question.dart';
import './answer.dart';

/*void main() {
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(children: [
              Question(questions[_questionIndex]),
              Answer(_answerQuestion, 'Answer 1'),
              Answer(_answerQuestion, 'Answer 2'),
              Answer(_answerQuestion, 'Answer 3'),
            ])));
  }
}
