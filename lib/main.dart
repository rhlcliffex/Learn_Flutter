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
      'answers': [
        {'text': 'Orange', 'score': 10},
        {'text': 'Saffron', 'score': 5},
        {'text': 'Yellow', 'score': 3},
        {'text': 'Red', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Lion', 'score': 8},
        {'text': 'elephant', 'score': 6},
        {'text': 'Tiger', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite programming language?',
      'answers': [
        {'text': 'C++', 'score': 1},
        {'text': 'Java', 'score': 8},
        {'text': 'Dart', 'score': 7},
        {'text': 'Kotlin', 'score': 3}
      ]
    },
  ];

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

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
                ? Quiz(
                    questions: questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex)
                : Result(_totalScore, _resetQuiz)
        )
    );
  }
}
