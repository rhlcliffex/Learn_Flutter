import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';
import './question.dart';
import './answer.dart';

/*void main() {
  runApp(MyApp());
}*/

void main() => MyApp();

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': ['saffron', 'blue', 'white', 'yellow', 'red']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['dog', 'cat', 'cow', 'fox', 'lion']
    },
    {
      'questionText': 'What\'s your favourite movie?',
      'answers': ['housefull', 'Andaaz apna apna', 'Kesari', 'kmg']
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flurrer App'),
        ),
        body: /*(_questionIndex < _questions.length)
            ? */Column(
                children: [
                  Question(
                      _questions[_questionIndex]['questionText']
                  ),
                  ...(_questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            //: Center(child: Text('You did it!')),
      ),
    );
  }
}
