import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note5.wav');
            },
            child: Text('Click to play'),
          ),
        ),
      ),
    );
  }
}
