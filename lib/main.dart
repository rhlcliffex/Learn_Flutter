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
  final questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Orange', 'Saffron', 'Yellow', 'Red']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Lion', 'elephant', 'Tiger']
    },
    {
      'questionText': 'What\'s your favorite programming language?',
      'answers': ['C++', 'Java', 'Dart', 'Kotlin']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < questions.length) {
      print('there are more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: (_questionIndex < questions.length)
                ? Quiz(questions: questions, answerQuestion: _answerQuestion, questionIndex: _questionIndex)
                : Result()
        )
    );
  }
}
