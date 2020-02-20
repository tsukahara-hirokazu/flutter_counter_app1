import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _value = 0;
  int get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }

  void decrement() {
    _value--;
    notifyListeners();
  }
}
