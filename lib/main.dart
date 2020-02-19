import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Bar(soundNumber: 1, color: Colors.red),
              Bar(soundNumber: 2, color: Colors.orange),
              Bar(soundNumber: 3, color: Colors.yellow),
              Bar(soundNumber: 4, color: Colors.green),
              Bar(soundNumber: 5, color: Colors.teal),
              Bar(soundNumber: 6, color: Colors.blue),
              Bar(soundNumber: 7, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}

class Bar extends StatelessWidget {
  Bar({this.soundNumber, this.color});

  final int soundNumber;
  final Color color;

  void playSound() {
    final AudioCache player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound();
        },
        color: color,
        child: null,
      ),
    );
  }
}
