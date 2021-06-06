import 'package:flutter/foundation.dart';

class CurrentViewModel extends ChangeNotifier {
  int _currentIndex = 0;

  int get index => _currentIndex;

  void selectIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
