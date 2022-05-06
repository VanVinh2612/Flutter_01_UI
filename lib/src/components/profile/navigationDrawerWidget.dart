import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/profile/buidMenuItem.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // margin: const EdgeInsets.symmetric(horizontal: 100.0),
        padding: const EdgeInsets.only(top: 100.0),
        width: double.infinity,
        color: Color(0xff525464),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 33.0),
              child: buildMenuItem(
                icons: Icons.home,
                text: 'Home',
                callback: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 33.0),
              child: buildMenuItem(
                icons: Icons.account_circle,
                text: 'Profile',
                callback: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 33.0),
              child: buildMenuItem(
                icons: Icons.settings,
                text: 'Settings',
                callback: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 33.0),
              child: buildMenuItem(
                icons: Icons.mail_outline,
                text: 'Messages',
                callback: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
