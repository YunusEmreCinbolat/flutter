// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[400],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/images/kahve.jpg'),
                ),
                Text(
                  "Flutter kahvecisi",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.brown,
                    fontFamily: 'Satisfy',
                  ),
                ),
                Text(
                  'Bir fincan Flutter uzağınızda',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Pacifico'),
                ),
                Container(
                  width: 200,
                  child: Divider(
                    height: 30,
                    color: Colors.black,
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.brown,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          size: 20,
                          color: Colors.yellow,
                        ),
                        title: Text(
                          'flutter@gmail.com',
                          style: TextStyle(fontSize: 25),
                        ),
                      )),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20),
                  color: Colors.brown,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.yellow,
                    ),
                    title: Text(
                      '0553752354',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
