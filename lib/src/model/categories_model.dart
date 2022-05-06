import 'package:flutter/material.dart';

class Category {
  String name, image;
  IconData iconRight;
  Category({required this.image, required this.name, required this.iconRight});
}

List<Category> categories = [
  Category(
      image: 'assets/images/furniture_icon.png',
      name: 'Furniture works',
      // ignore: prefer_const_constructors
      iconRight: Icons.arrow_forward_ios),
  Category(
      image: 'assets/images/cleaning_icon.png',
      name: 'Cleaning services',
      // ignore: prefer_const_constructors
      iconRight: Icons.arrow_forward_ios),
  Category(
      image: 'assets/images/equipment_icon.png',
      name: 'Equipment repair',
      // ignore: prefer_const_constructors
      iconRight: Icons.arrow_forward_ios),
  Category(
      image: 'assets/images/courier_icon.png',
      name: 'Courier services',
      // ignore: prefer_const_constructors
      iconRight: Icons.arrow_forward_ios),
  Category(
      image: 'assets/images/interiro_icon.png',
      name: 'Interior design',
      // ignore: prefer_const_constructors
      iconRight: Icons.arrow_forward_ios),
];
