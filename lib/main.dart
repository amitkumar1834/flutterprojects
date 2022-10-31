import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _quesindex = 0;

  void _answerQuestion() {
    setState(() {
      _quesindex = _quesindex + 1;
    });

    print(_quesindex);
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['blue', 'black', 'pink', 'green'],
      },
      {
        'questiontext': 'What\'s your fav animal?',
        'answers': ['lion', 'cat', 'dog', 'tiger'],
      },
      {
        'questionText': 'What\'s your fav car?',
        'answers': ['ferrari', 'lambo', 'mercedes', 'audi'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _quesindex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                quesIndex: _quesindex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
