import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: Color(0xff525464)),
      ),
      leading: const Padding(
        padding: EdgeInsets.only(left: 30.0),
        child: Icon(
          Icons.arrow_back_ios_new,
          color: Color(0xff525464),
        ),
      ),
      backgroundColor: Colors.white,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: SvgPicture.asset('assets/icon/menu.svg'),
        ),
      ],
      elevation: 0,
    );
  }
}
