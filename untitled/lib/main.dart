import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          title: Text(
            "Bilgi Uygulaması",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: BilgiUyg(),
        )),
      ),
    );
  }
}

class BilgiUyg extends StatefulWidget {
  @override
  State<BilgiUyg> createState() => _BilgiUygState();
}

class _BilgiUygState extends State<BilgiUyg> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Center(
              child: Text(
                "YUNUS",
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Wrap(
          spacing: 5,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: IconButton(
                            padding: EdgeInsets.all(12),
                            color: Colors.white,
                            icon: Icon(
                              Icons.thumb_down,
                              size: 30.0,
                            ),
                            onPressed: () {
                              //buttonFonksiyonu(false);
                            }),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: IconButton(
                        padding: EdgeInsets.all(12),
                        color: Colors.white,
                        icon: Icon(Icons.thumb_up, size: 30.0),
                        onPressed: () {
                          // buttonFonksiyonu(true);
                        },
                      ),
                    ),
                  ))
                ],
              ),
            ))
      ],
    );
  }
}
