import 'package:flutter/material.dart';

class Attraction {
  String? imgPath;
  String? name;
  String? desc;
  double? price;
  String? location;
  int? rating;

  Attraction({
    this.imgPath,
    this.name,
    this.desc,
    this.price,
    this.location,
    this.rating,
  });
}

class BottomBarItem {
  String? label;
  bool? isSelected;
  IconData? icon;

  BottomBarItem({this.label, this.isSelected, this.icon});
}
