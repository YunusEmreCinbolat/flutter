import 'package:flutter/cupertino.dart';

class data with ChangeNotifier {
  String sehir = "Adana";

  void degistir(String newCity) {
    sehir = newCity;
    notifyListeners();
  }
}
