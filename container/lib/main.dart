import 'package:flutter/material.dart';

void main() {
  runApp(
    BenimUyg(),
  );
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Flutter kahvecisi"),
          backgroundColor: Colors.brown,
        ),
        body: SafeArea(
          child: Container(
              alignment: Alignment.bottomRight,
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadiusDirectional.circular(14.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.fromLTRB(50, 70, 10, 0),
              padding: EdgeInsets.all(16.0),
              child: Transform(
                child: Text("Flutter"),
                transform: Matrix4.rotationZ(-0.2),
                alignment: FractionalOffset.center,
              )),
        ),
      ),
    );
  }
}
