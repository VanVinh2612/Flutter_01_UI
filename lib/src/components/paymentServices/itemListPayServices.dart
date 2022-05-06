import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class itemListPayment extends StatefulWidget {
  final String images, name, price;
  const itemListPayment(
      {Key? key, required this.images, required this.name, required this.price})
      : super(key: key);

  @override
  State<itemListPayment> createState() => _itemListPaymentState();
}

class _itemListPaymentState extends State<itemListPayment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.only(bottom: 26),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(widget.images),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              widget.name,
              style: const TextStyle(
                  color: Color(0xff525464),
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              widget.price,
              style: const TextStyle(
                  color: Color(0xff525464),
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
