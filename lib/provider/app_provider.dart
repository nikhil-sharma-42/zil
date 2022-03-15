import 'package:flutter/material.dart';

import '../constants/custom_color.dart';
import '../models/model.dart';

class AppProvider with ChangeNotifier {
  bool? selectedCategory = false;
  int? selectedItemIndex;
  int? selectedFilteredIndex = 1;
  int? selectedSortedByIndex = 1;

  final Map<String, dynamic> _categoryMap = {
    "data": [
      {"name": "Jackets", "selected": false},
      {"name": "Fleece", "selected": false},
      {"name": "Sweatshirts & Hoodies", "selected": false},
      {"name": "Sweaters", "selected": false},
      {"name": "Shirts", "selected": false},
      {"name": "T-Shirts", "selected": false},
      {"name": "Pants & Jeans", "selected": false},
    ]
  };
  static final List<String> _filterList = ["Show all", "Buy now", "Buy later"];
  static final List<String> _sortByList = [
    "assets/images/menu.png",
    "assets/images/menu1.png"
  ];
  static final List<Color> _colorList = [
    CustomColor.lightGrey,
    CustomColor.orangeColor,
    CustomColor.violetColor,
    CustomColor.greenColor,
    CustomColor.darkBlueColor,
    CustomColor.lightBlueColor,
    CustomColor.skyBlueColor,
    CustomColor.orangeColor,
    CustomColor.skyBlueColor,
    CustomColor.violetColor,
  ];

  List<Color> get colorList => _colorList;
  List<String> get sortByList => _sortByList;
  List<String> get filterList => _filterList;
  Map<String, dynamic> get categoryMap => _categoryMap;

  HomeScreenModel changeCategory() {
    HomeScreenModel c = HomeScreenModel.fromJson(categoryMap);
    return c;
  }

  void changeSelectedItem(
      {required bool? selectedItemVal, required int? itemIndex}) {
    selectedItemIndex = itemIndex;
    selectedCategory = selectedItemVal;
    notifyToAllValues();
  }

  void changeFilterIndex({required int? selectedFilterIndex2}) {
    selectedFilteredIndex = selectedFilterIndex2;
    notifyToAllValues();
  }

  void changeSortByIndex({required int? selectedSortByIndex2}) {
    selectedSortedByIndex = selectedSortByIndex2;
    notifyToAllValues();
  }

  notifyToAllValues() {
    notifyListeners();
  }
}
