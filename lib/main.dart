// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }


Expanded xyloButton({required Color color,required int soundNumber}){
  return Expanded(               
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                  ),
                  onPressed: () {
                    playSound(soundNumber);
                  },
                  child: Text(''),
                ),
              );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 82, 82, 82),
          title: Text('Xylophone made by : Hyperactive Duck'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              xyloButton(color: Colors.red, soundNumber: 1),
              xyloButton(color: Colors.blue, soundNumber: 2),
              xyloButton(color: Colors.green, soundNumber: 3),
              xyloButton(color: Colors.yellow, soundNumber: 4),
              xyloButton(color: Colors.brown, soundNumber: 5),
              xyloButton(color: Colors.purple, soundNumber: 6),
              xyloButton(color: Colors.orange, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
