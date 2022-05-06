import 'package:flutter/material.dart';

// ignore: camel_case_types
class buildMenuItem extends StatelessWidget {
  const buildMenuItem({
    Key? key,
    required this.text,
    required this.icons,
    required this.callback,
  }) : super(key: key);

  final String text;
  final IconData icons;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xff323440),
          radius: 37.0,
          child: Icon(icons),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ],
    );
  }
}
