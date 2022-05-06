import 'package:flutter/material.dart';

class itemCategories extends StatefulWidget {
  const itemCategories(
      {Key? key,
      required this.image,
      required this.name,
      required this.iconRight})
      : super(key: key);
  final String image, name;
  final IconData iconRight;
  @override
  State<itemCategories> createState() => _itemCategoriesState();
}

class _itemCategoriesState extends State<itemCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(right: 30, left: 30, bottom: 16),
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Color(0xffE2E2E0))),
      child: Row(
        children: [
          Container(
              height: 80,
              width: 80,
              color: Color(0xffF7F7F7),
              margin: EdgeInsets.only(right: 15),
              child: Image(
                image: AssetImage(widget.image),
                width: 26,
                height: 30,
              )),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.name,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(
                    0xff838391,
                  )),
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            child: Icon(widget.iconRight),
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
