import 'package:flutter/material.dart';

class itemPaymentCard extends StatefulWidget {
  const itemPaymentCard({Key? key}) : super(key: key);

  @override
  State<itemPaymentCard> createState() => _itemPaymentCardState();
}

class _itemPaymentCardState extends State<itemPaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 202.0,
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.66695),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment(0.5, 0.0),
              colors: [Color(0xff02DA80), Color(0xff0284D8)],
            ),
          ),
        ),
        const Positioned(
          top: 20,
          left: 23,
          child: Text(
            '**** 3872',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Positioned(
          bottom: 19,
          left: 23,
          child: Text(
            '\$ 25,388',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        const Positioned(
          top: 20,
          right: 23,
          child: Text(
            '17/20',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
