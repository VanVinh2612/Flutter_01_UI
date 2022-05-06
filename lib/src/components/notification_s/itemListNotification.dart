import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemListNotifi extends StatefulWidget {
  final String images, name, companyName, description;
  const ItemListNotifi(
      {Key? key,
      required this.images,
      required this.name,
      required this.companyName,
      required this.description})
      : super(key: key);

  @override
  State<ItemListNotifi> createState() => _ItemListNotifiState();
}

class _ItemListNotifiState extends State<ItemListNotifi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.only(bottom: 30),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xffF7F7FB),
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.images),
                  radius: 25.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff525464),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.companyName,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xff838391),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Text(
            widget.description,
            style: const TextStyle(
              fontSize: 14,
              letterSpacing: 0.35,
              color: Color(
                0xff616173,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
