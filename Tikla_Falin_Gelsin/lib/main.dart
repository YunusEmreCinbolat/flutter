import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Bar());
}

class Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text("Günün Falı"),
          centerTitle: true,
          backgroundColor: Colors.pink[800],
        ),
        body: Fal(),
      ),
    );
  }
}

class Fal extends StatefulWidget {
  @override
  State<Fal> createState() => _FalState();
}

class _FalState extends State<Fal> {
  @override
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  int ask = 1;
  int para = 6;
  int tavsiye = 11;

  int durum = 0;

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/Fal-kure.jpeg'),
            radius: 70,
          ),
          Container(
            width: 300,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (ask < 5) {
                      ask++;
                    } else {
                      ask = 1;
                    }
                    durum = ask;
                  });
                },
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Aşk durumu",
                      style: TextStyle(color: Colors.pink, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (para < 10) {
                      para++;
                    } else {
                      para = 6;
                    }
                    durum = para;
                  });
                },
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.shopping_basket_outlined,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Para durumu",
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (tavsiye < 15) {
                      tavsiye++;
                    } else {
                      tavsiye = 11;
                    }
                    durum = tavsiye;
                  });
                },
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.record_voice_over,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Günlük Tavsiye",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(40, 10, 40, 0),
            color: Colors.pink,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Text(
                yanitlar[durum],
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
