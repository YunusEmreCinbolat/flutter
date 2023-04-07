import 'package:flutter/material.dart';
import 'package:nersei/AppBar.dart';

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Container(
          padding: EdgeInsets.all(20.0), // Kenarlardan boşluk ayarı
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.grey[300],
                  child: Image(image: AssetImage('assets/images/nersel.png')),
                ),
              ),
              SizedBox(height: 16.0), // Yükseklik ayarı
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.red,
                        ),
                        SizedBox(height: 8.0), // Yükseklik ayarı
                        Text('0 507 995 3274\n0 537 968 5345'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.red,
                        ),
                        SizedBox(height: 8.0), // Yükseklik ayarı
                        Text('nerselmak@gmail\n.com'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        SizedBox(height: 8.0), // Yükseklik ayarı
                        Text(
                            'Oymaağaç Mahallesi\nMobilyakent\nSitesi 5068.\nSokak No:2/B\nKOCASİNAN/KAYSERİ'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
