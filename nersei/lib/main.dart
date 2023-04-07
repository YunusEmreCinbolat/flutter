import 'package:flutter/material.dart';
import 'package:nersei/Contact.dart';
import 'package:nersei/Login.dart';

import 'AppBar.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Nersel(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Nersel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: (appbar()),
        body: contact(),
      ),
    );
  }
}
