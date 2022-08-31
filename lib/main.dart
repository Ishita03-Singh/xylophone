import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());
Expanded play_sound(int number,Color color) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
          backgroundColor: color, primary: Colors.red),
      onPressed: () {
       final player = AudioPlayer();
  player.play(AssetSource("note$number.wav"));
      },
    ),
  );
  // AssetSource url = AssetSource("file_example.mp3");
  //  UrlSource(
  //     "https://file-examples.com/storage/fe2333f3be630e8e7965da7/2017/11/file_example_MP3_700KB.mp3");
  
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.stretch,
            children: [
             play_sound(1, Colors.red),
              play_sound(2, Colors.orange),
               play_sound(3, Colors.yellow),
                play_sound(4, Colors.green),
                 play_sound(5, Colors.blue),
                  play_sound(6, Colors.indigo),
                   play_sound(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
