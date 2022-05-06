import 'package:flutter/material.dart';
import 'package:flutter_01/src/screen/construction_works_screen.dart';
import 'package:flutter_01/src/screen/customer_info_screen.dart';
import 'package:flutter_01/src/screen/notification_screen.dart';
import 'package:flutter_01/src/screen/onboarding_screen.dart';
import 'package:flutter_01/src/screen/orders_in_progress_screen.dart';
import 'package:flutter_01/src/screen/payment_cards_detail_screen.dart';
import 'package:flutter_01/src/screen/payment_cards_screen.dart';
import 'package:flutter_01/src/screen/payment_for_services_screen.dart';
import 'package:flutter_01/src/screen/profile_screen.dart';
import 'package:flutter_01/src/screen/setting_screen.dart';
import 'package:flutter_01/src/screen/sign_in_screen.dart';
import 'package:flutter_01/src/screen/sign_up_screen.dart';

import 'src/screen/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CustomerInfoScreen());
  }
}
