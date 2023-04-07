import 'soru.dart';

class test_veri {
  int _cevap_index = 0;
  List<Soru> _sorular = [
    Soru(
        soruMetni: '1.Titanic gelmiş geçmiş en büyük gemidir',
        soruYaniti: false),
    Soru(
        soruMetni: '2.Dünyadaki tavuk sayısı insan sayısından fazladır',
        soruYaniti: true),
    Soru(soruMetni: '3.Kelebeklerin ömrü bir gündür', soruYaniti: false),
    Soru(soruMetni: '4.Dünya düzdür', soruYaniti: false),
    Soru(
        soruMetni: '5.Kaju fıstığı aslında bir meyvenin sapıdır',
        soruYaniti: true),
    Soru(
        soruMetni: '6.Fatih Sultan Mehmet hiç patates yememiştir',
        soruYaniti: true),
    Soru(soruMetni: '7.Fransızlar 80 demek için, 4 - 20 der', soruYaniti: true),
  ];

  String getSoruMetni() {
    return _sorular[_cevap_index].soruMetni;
  }

  bool getSoruYaniti() {
    return _sorular[_cevap_index].soruYaniti;
  }

  void getCevap_index() {
    if (_cevap_index < 6) {
      _cevap_index++;
    } else
      _cevap_index = 0;
  }

  bool testBittiMi() {
    return _cevap_index == 6 ? true : false;
  }

  void TestSifirla() {
    _cevap_index = 0;
  }
}

class RandomTestVeri extends test_veri {
  int _cevap_index = 0;
  @override
  void getCevap_index() {
    if (_cevap_index < 6) {
      _cevap_index++;
    } else
      _cevap_index = 0;
  }
}
