import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeColor extends ChangeNotifier {
  Color color = Colors.primaries[0];
  Color colorT = Colors.primaries[5];

  void changeColor(int index,indexT) {
    color = Colors.primaries[index];
    colorT = Colors.primaries[indexT];
notifyListeners();
  }
}
