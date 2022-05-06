import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class itemListProfile extends StatefulWidget {
  const itemListProfile({
    Key? key,
    required this.svgIcon,
    required this.name,
    required this.title
  }) : super(key: key);
  final String svgIcon, name, title;
  @override
  State<itemListProfile> createState() => _itemListProfileState();
}

class _itemListProfileState extends State<itemListProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color(0xffE2E2E0),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(child: SvgPicture.asset(widget.svgIcon)),
            flex: 1,
          ),
          Container(
            height: 42,
            decoration: const BoxDecoration(
                border: Border(right: BorderSide(color: Color(0xffECECEB)))),
          ),
          Expanded(
            child: Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xaaFFFFFF),
                    ),
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
