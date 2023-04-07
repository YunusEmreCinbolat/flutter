import 'package:bilgi_uygulamasi/test_veri.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'soru.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  @override
  List<Widget> cevaplar = [];

  List<bool> dogru_mu = [false, true, false, false, true, true, true];

  test_veri test1 = RandomTestVeri();
  void buttonFonksiyonu(bool sonuc) {
    if (test1.testBittiMi() == true) {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Bölüm Sonu"),
            content: new Text("Tebrikler!!!"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new TextButton(
                child: new Text("Başa dön"),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    cevaplar = [];
                    test1.TestSifirla();
                  });
                },
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        test1.getSoruYaniti() == sonuc
            ? cevaplar.add(kDogru_ikonu)
            : cevaplar.add(kYanlis_ikonu);
        test1.getCevap_index();
      });
    }
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(children: cevaplar, spacing: 5),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      color: Colors.red,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: IconButton(
                            padding: EdgeInsets.all(12),
                            color: Colors.white,
                            icon: Icon(
                              Icons.thumb_down,
                              size: 30.0,
                            ),
                            onPressed: () {
                              buttonFonksiyonu(false);
                            }),
                      )),
                ),
                Expanded(
                    child: Container(
                  color: Colors.green,
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: IconButton(
                        padding: EdgeInsets.all(12),
                        color: Colors.white,
                        icon: Icon(Icons.thumb_up, size: 30.0),
                        onPressed: () {
                          buttonFonksiyonu(true);
                        },
                      )),
                )),
              ])),
        )
      ],
    );
  }
}
