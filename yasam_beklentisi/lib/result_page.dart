import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/hesap.dart';
import 'package:yasam_beklentisi/insan.dart';

class Sonuc extends StatelessWidget {
  insan insan1;
  Sonuc(this.insan1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "Sonuc Sayfası",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Center(
                child: Text(
                  "Beklenen Yaşam Süreniz:\n\n"
                  "${Hesap(insan1).Hesaplama().round()} Gününüz Kaldi",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                child: Text(
                  "Geri dön",
                  style: TextStyle(fontSize: 25),
                ),
              ))
        ],
      ),
    );
  }
}
