import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class itemListPaymentCards extends StatefulWidget {
  final String images, number, time;
  final int colorBegin, colorEnd;
  const itemListPaymentCards(
      {Key? key,
      required this.images,
      required this.number,
      required this.time,
      required this.colorBegin,
      required this.colorEnd})
      : super(key: key);

  @override
  State<itemListPaymentCards> createState() => _itemListPaymentCardsState();
}

class _itemListPaymentCardsState extends State<itemListPaymentCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          _itemPayCard(widget.colorBegin, widget.colorEnd),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.number,
                  style: const TextStyle(color: Color(0xff525464)),
                ),
                Text(widget.time),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            alignment: Alignment.centerRight,
            child: Image.asset(
              widget.images,
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemPayCard(int colorBegin, colorEnd) {
    return Stack(
      children: [
        Container(
          height: 42.0,
          width: 65.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.66695),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: const Alignment(0.5, 0.0),
              colors: [Color(colorBegin), Color(colorEnd)],
            ),
          ),
        ),
        const Positioned(
          top: 3,
          left: 5,
          child: Text(
            '**** 3872',
            style: TextStyle(color: Colors.white, fontSize: 6),
          ),
        ),
        const Positioned(
          bottom: 3,
          left: 5,
          child: Text(
            '\$ 25,388',
            style: TextStyle(color: Colors.white, fontSize: 8),
          ),
        ),
        const Positioned(
          top: 3,
          right: 5,
          child: Text(
            '17/20',
            style: TextStyle(color: Colors.white, fontSize: 6),
          ),
        ),
      ],
    );
  }
}
