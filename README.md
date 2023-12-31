# Xylophone App
## Reproducir sonidos
Con la libreria `audioplayers` <br>El archivo `play.wav` debe estar en la carpeta `~/assets/`
```
import 'package:audioplayers/audioplayers.dart';
...
final player = AudioPlayer();
player.play(AssetSource('play.wav'));
```
## Función `playSound()`
```
void playSound(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
}
```
Asi podemos cambiar la pista dinamicamente

## Encapsular Widget
La funcion `Boton` retorna un Widget `Expanded`, toma como parametros `number` y `color` para pasarle dinamicamente la pista que debe tocar y el color del boton. 
```
Expanded Boton(int number, Color color) {
    return Expanded(
      child: ElevatedButton(
        child: SizedBox(
          width: double.infinity,
        ),
        onPressed: () {          
          playSound(number);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Background color
        ),
      ),
    );
  }
```
De esta manera podemos llamar a `Boton` sin repetir tanto codigo
```
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
```