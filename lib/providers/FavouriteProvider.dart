import 'package:flutter/material.dart';


class FavouriteProvider with ChangeNotifier{
  List<int> _selectedItems=[];

  List<int> get selectedItems => _selectedItems;

  void AddIndex(int i){
    _selectedItems.add(i);
    notifyListeners();
  }
  void RemoveIndex(int i){
    _selectedItems.remove(i);
    notifyListeners();
  }
}