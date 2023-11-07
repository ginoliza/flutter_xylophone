import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Expanded Boton(int number, Color color) {
    return Expanded(
      child: ElevatedButton(
        child: SizedBox(
          width: double.infinity,
        ),
        onPressed: () async {
          print("boton presionado");
          playSound(number);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Background color
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Boton(1, Colors.red),
              Boton(2, Colors.orange),
              Boton(3, Colors.yellow),
              Boton(4, Colors.green),
              Boton(5, Colors.teal),
              Boton(6, Colors.blue),
              Boton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
