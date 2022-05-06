import 'package:flutter/material.dart';

class Construction {
  String name;
  int id;
  Construction({required this.name, required this.id});
}

List<Construction> construction = [
  Construction(
    id: 1,
    name: 'Welding works',
  ),
  Construction(
    id: 2,
    name: 'Foundation works',
  ),
  Construction(
    id: 3,
    name: 'Roofing',
  ),
  Construction(
    id: 4,
    name: 'Waterproofing',
  ),
  Construction(
    id: 5,
    name: 'Architecture',
  ),
  Construction(
    id: 6,
    name: 'Design',
  ),
];
