import 'package:flutter/material.dart';

class Onboarding {
  String title, images, description;
  Onboarding(
      {required this.title,
      required this.images,
      required this.description});
}

List<Onboarding> listOnboarding = [
  Onboarding(title: 'Proven specialists', images: 'assets/images/onboarding_1.png', description: 'We check each specialist before he starts work'),
  Onboarding(title: 'Honest ratings', images: 'assets/images/onboarding_2.png', description: 'We carefully check each specialist and put honest ratings'),
  Onboarding(title: 'Insured orders', images: 'assets/images/onboarding_3.png', description: 'We insure each order for the amount of 500'),
  Onboarding(title: 'Create order', images: 'assets/images/onboarding_4.png', description: 'It is easy, just click on the plus')
];
