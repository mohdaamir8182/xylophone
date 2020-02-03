import 'package:flutter/material.dart';
import 'package:flame/flame.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Xylophone(),
    );
  }
}
class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

  Widget makeTab(tabColor , soundNo){
    return Expanded(
      child: FlatButton(
        color: tabColor,
        onPressed: (){
          playSound(soundNo);
        },
      ),
    );
  }
  void playSound(soundNo){
    Flame.audio.play('note$soundNo.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Xylophone"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            makeTab(Colors.teal , 1),
            makeTab(Colors.pink , 2),
            makeTab(Colors.purple , 3),
            makeTab(Colors.yellow , 4),
            makeTab(Colors.redAccent , 5),
            makeTab(Colors.blue , 6),
            makeTab(Colors.black , 7),
          ],
        ),
      ),
    );
  }
}

