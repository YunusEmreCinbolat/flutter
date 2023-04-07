import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam_beklentisi/insan.dart';
import 'package:yasam_beklentisi/widget.dart';
import 'result_page.dart';
import 'ikon.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Color renk;
  String seciliCinsiyet = '';

  double icilen_sigara = 0;
  double gun_spor = 0;
  int boy = 160;
  int kilo = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text(
            'YAŞAM BEKLENTİSİ',
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: mywidget(
                      Colors.white,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              "Boy",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              "$boy",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonTheme(
                                minWidth: 50,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      boy++;
                                    });
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.blueAccent),
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              ButtonTheme(
                                  minWidth: 50,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        boy--;
                                      });
                                    },
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.blueAccent),
                                  ))
                            ],
                          )
                        ],
                      )),
                ),
                Expanded(
                    child: mywidget(
                        Colors.white,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                "Kilo",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                "$kilo",
                                style:
                                    TextStyle(fontSize: 30, color: Colors.blue),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ButtonTheme(
                                  minWidth: 50,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        setState(() {
                                          kilo++;
                                        });
                                      },
                                      style: OutlinedButton.styleFrom(
                                          backgroundColor: Colors.blue),
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30),
                                      )),
                                ),
                                ButtonTheme(
                                  minWidth: 50,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          backgroundColor: Colors.blue),
                                      onPressed: () {
                                        setState(() {
                                          kilo--;
                                        });
                                      },
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30),
                                      )),
                                ),
                              ],
                            )
                          ],
                        )))
              ]),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: mywidget(
                        Colors.white,
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Haftada kaç gün spor yapıyorsunuz ?",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "${gun_spor.round()}",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.blueAccent),
                              ),
                              Slider(
                                  value: gun_spor,
                                  min: 0,
                                  max: 7,
                                  divisions: 7,
                                  onChanged: (double newvalue) {
                                    setState(() {
                                      gun_spor = newvalue;
                                    });
                                  })
                            ])))
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: mywidget(
                      Colors.white,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Günde kaç paket sigara içiyorsunuz ?",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "${icilen_sigara.round()}",
                            style: TextStyle(
                                fontSize: 30, color: Colors.blueAccent),
                          ),
                          Slider(
                              divisions: 30,
                              min: 0,
                              value: icilen_sigara,
                              max: 30,
                              onChanged: (double newvalue) {
                                setState(() {
                                  icilen_sigara = newvalue;
                                });
                              })
                        ],
                      )),
                )
              ],
            )),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      seciliCinsiyet = 'Kadin';
                    });
                  },
                  child: mywidget(
                      seciliCinsiyet == 'Kadin' ? Colors.green : Colors.white,
                      Iconcinsiyet(Icons.woman, "Kadın", Colors.red)),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      seciliCinsiyet = 'Erkek';
                    });
                  },
                  child: mywidget(
                      seciliCinsiyet == 'Erkek' ? Colors.green : Colors.white,
                      Iconcinsiyet(Icons.man, "Erkek", Colors.blue)),
                ))
              ]),
            ),
            ButtonTheme(
              height: 4,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sonuc(new insan(seciliCinsiyet,
                              icilen_sigara, gun_spor, boy, kilo))));
                },
                child: Text("Hesapla", style: TextStyle(fontSize: 25)),
              ),
            )
          ],
        ));
  }
}
