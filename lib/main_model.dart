import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String mashText = 'mashproject';

  void changeMashText() {
    mashText = 'mash716Test';
    notifyListeners();
  }
}
