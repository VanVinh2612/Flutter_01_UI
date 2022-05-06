import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemProduct extends StatefulWidget {
  final String images, name, price;
  const ItemProduct({
    Key? key,
    required this.images,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  State<ItemProduct> createState() => _ItemProductState();
}

class _ItemProductState extends State<ItemProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(widget.images),
          Text(widget.name),
          Text(widget.price)
        ],
      ),
    );
  }
}
