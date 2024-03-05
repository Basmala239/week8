import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControllProvider extends ChangeNotifier{
  int currentIndex =0;

  void change(int index){
    currentIndex=index;
    notifyListeners();
  }

}