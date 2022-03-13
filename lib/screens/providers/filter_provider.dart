import 'package:flutter/foundation.dart';

class FilterProvider extends ChangeNotifier {
  bool barchasi = false;
  bool ustachilik = false;
  bool dehqonchilik = false;
  bool yukT = false;
  bool suvoq = false;
  bool beton = false;
  barchAsi() {
    barchasi = !barchasi;
    notifyListeners();
  }

  uStachi() {
    ustachilik = !ustachilik;
    notifyListeners();
  }

  dehqonChi() {
    dehqonchilik = !dehqonchilik;
    notifyListeners();
  }

  yuK() {
    yukT = !yukT;
    notifyListeners();
  }

  suvoQ() {
    suvoq = !suvoq;
    notifyListeners();
  }

  betoNch() {
    beton = !beton;
    notifyListeners();
  }
}
