import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'dart:math' as math;

class HomeViewModel extends BaseViewModel {
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;

  void changeBackgroundColor() {
    backgroundColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    notifyListeners();
  }

  void changeTextColor() {
    textColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    notifyListeners();
  }
}
