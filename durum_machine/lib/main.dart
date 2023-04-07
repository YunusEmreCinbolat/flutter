import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  final oynatici = AudioCache();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Drumpage(),
        backgroundColor: Colors.purple,
      ),
    );
  }
}

class Drumpage extends StatelessWidget {
  const Drumpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: buildbutton(Colors.blue)),
              Expanded(child: buildbutton(Colors.pink)),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: buildbutton(Colors.red)),
              Expanded(
                child: TextButton(
                    onPressed: () {}, child: buildbutton(Colors.brown)),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: TextButton(
                      onPressed: () {}, child: buildbutton(Colors.green))),
              Expanded(
                  child: TextButton(
                      onPressed: () {}, child: buildbutton(Colors.black87))),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: buildbutton(Colors.cyan)),
              Expanded(
                  child: TextButton(
                      onPressed: () {}, child: buildbutton(Colors.cyanAccent))),
            ],
          ))
        ],
      ),
    );
  }
}

TextButton buildbutton(Color renk) {
  return TextButton(
    onPressed: () {},
    child: Container(
      color: renk,
    ),
  );
}
