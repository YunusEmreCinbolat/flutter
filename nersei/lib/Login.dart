import 'package:flutter/material.dart';
import 'package:nersei/Contact.dart';
import 'package:nersei/AppBar.dart';
import 'package:nersei/Home.dart';
import 'package:nersei/main.dart';
import 'package:nersei/Manager.dart';

class Giris extends StatelessWidget {
  TextEditingController _eposta = TextEditingController();
  TextEditingController _sifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: appbar(),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.grey[200], // Arka plan rengi
              padding: EdgeInsets.all(50),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _eposta,
                      decoration: InputDecoration(
                        labelText: 'E-POSTA',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {},
                    ),
                    SizedBox(height: 16.0), // Yükseklik ayarı
                    TextField(
                      obscureText: true,
                      controller: _sifre,
                      decoration: InputDecoration(
                        labelText: 'ŞİFRE',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {},
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Uyari("uyari", Colors.white),
                    SizedBox(height: 16.0), // Yükseklik ayarı
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Şifremi unuttum butonuna basıldığında yapılacak işlemler
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: Text(
                            'Şifremi unuttum',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState() {
                              Manager(_eposta.text, _sifre.text).kontrol() ==
                                      true
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => home()))
                                  : Uyari(
                                      "Girilen bilgiler hatalı", Colors.red);
                            }
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blue)),
                          child: Text(
                            'Giriş yap',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Geri Dön",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Uyari extends StatelessWidget {
  late String uyari;
  final Color renk;
  Uyari(this.uyari, this.renk);
  @override
  Widget build(BuildContext context) {
    return Text(
      uyari,
      style: TextStyle(color: renk, fontSize: 8),
    );
  }
}
