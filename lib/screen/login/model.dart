import 'package:flutter/cupertino.dart';

class Side {
  Side(
      {required this.title, required this.description, required this.imageUrl});

  final String title;
  final String description;
  final String imageUrl;
}

List<Side> sides = [
  Side(
    title: 'Gain total control of your money',
    description: 'Become your own money manager and make every cent count',
    imageUrl: 'assets/images/Illustrationone.png',
  ),
  Side(
    title: 'Know where your money goes',
    description:
        'Track your transaction easily, with categories and financial report',
    imageUrl: 'assets/images/Illustrationt.png',
  ),
  Side(
    title: 'Planning ahead',
    description: 'Setup your budget for each category so you in control',
    imageUrl: 'assets/images/Illustrationth.png',
  ),
];
