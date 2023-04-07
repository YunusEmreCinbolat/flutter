import 'package:flutter/material.dart';

class Iconcinsiyet extends StatelessWidget {
  final IconData ikoncinsiyet;
  final String cinsiyet;
  final Color renk;

  Iconcinsiyet(this.ikoncinsiyet, this.cinsiyet, this.renk);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ikoncinsiyet,
          size: 50,
          color: renk,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cinsiyet,
          style:
              TextStyle(color: renk, fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    );
  }
}
