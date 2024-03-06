import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControllProvider extends ChangeNotifier{
  int currentIndex =0;

  void change(int index) async{
    currentIndex=index;
    notifyListeners();
  }
   Future<void>loadContacts() async {
    await Future.delayed(const Duration(seconds: 5), () {
      // myContacts.contacts[5]; // to cause an error
    });
   }

}