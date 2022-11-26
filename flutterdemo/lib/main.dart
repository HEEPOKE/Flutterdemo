import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:ui' as ui show Paint, Path, Canvas;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Flutter Demo";

    return MaterialApp(
      title: 'Flutter Test',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: RandomWord(),
        ),
      ),
    );
  }
}

class RandomWord extends StatefulWidget {
  RandomWord({super.key});
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 20);
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
