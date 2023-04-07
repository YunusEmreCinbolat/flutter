import 'insan.dart';

class Hesap {
  insan insan1;
  Hesap(this.insan1);
  double Hesaplama() {
    double sonuc;
    sonuc = 90 + insan1.gun_spor - insan1.icilen_sigara;
    sonuc = sonuc + (insan1.boy / insan1.kilo);
    return sonuc;
  }
}
