import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  playSound(2);
                },
                color: Colors.lime,
              ),
              FlatButton(
                onPressed: () {
                  playSound(3);
                },
                color: Colors.cyan,
              ),
              FlatButton(
                onPressed: () {
                  playSound(4);
                },
                color: Colors.pink,
              ),
              FlatButton(
                onPressed: () {
                  playSound(5);
                },
                color: Colors.purple,
              ),
              FlatButton(
                color: Colors.indigo,
                onPressed: () {
                  playSound(6);
                },
              ),
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
