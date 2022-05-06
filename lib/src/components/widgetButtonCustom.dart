import 'package:flutter/material.dart';

// ignore: camel_case_types
class widgetcustombutton extends StatelessWidget {
  const widgetcustombutton({
    Key? key,
    required this.type,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  final String type;
  final int color;
  final int textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      // margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(color),
          onPrimary: Color(textColor),
        ),
        child: Text(
          '$type',
          style: const TextStyle(fontSize: 16),
        ),
        onPressed: () {},
      ),
    );
  }
}
