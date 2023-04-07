import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Bugün Ne Yesem',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: YemekTarifi(),
      ),
    );
  }
}

class YemekTarifi extends StatefulWidget {
  @override
  State<YemekTarifi> createState() => _YemekTarifiState();
}

class _YemekTarifiState extends State<YemekTarifi> {
  int lahmacun_no = 1;

  int corba_no = 1;
  List<String> corba_ad = ["Corba 1", "Corba 2", "Corba 3"];
  List<String> lahmacun_ad = ["Lahmacun 1", "Lahmacun 2", "Lahmacun 3"];
  degistir() {
    setState(() {
      lahmacun_no = Random().nextInt(3) + 1;
      corba_no = Random().nextInt(3) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: degistir,
                child: Image.asset('assets/image/lahmacun_$lahmacun_no.jpg')),
          )),
          Container(
            width: 100,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Text(
            lahmacun_ad[lahmacun_no - 1],
            style: TextStyle(fontSize: 25),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  print("karniyarik");
                },
                child: Image.asset('assets/image/karniyarik_1.jpg')),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: degistir,
                child: Image.asset('assets/image/corba_$corba_no.jpg')),
          )),
          Container(
            width: 100,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Text(
            corba_ad[corba_no - 1],
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
