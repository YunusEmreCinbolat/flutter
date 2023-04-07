import 'package:flutter/material.dart';

class mywidget extends StatelessWidget {
  Color renk;
  Widget child;
  mywidget(this.renk, this.child);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      color: renk,
      child: child,
    );
  }
}
