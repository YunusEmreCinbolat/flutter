import 'package:flutter/material.dart';
import 'package:nersei/AppBar.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar(),
        body: SafeArea(
          child: Center(
            child: Text("Anasayfa"),
          ),
        ),
      ),
    );
  }
}
