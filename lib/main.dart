import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded playButton(Color c, int n) {
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: () {
          playSound(n);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playButton(Colors.pink, 1),
              playButton(Colors.indigo, 2),
              playButton(Colors.blue, 3),
              playButton(Colors.green, 4),
              playButton(Colors.yellow, 5),
              playButton(Colors.orange, 6),
              playButton(Colors.red, 7),
            ],
          ),
        ),
      ),
    );
  }
}
