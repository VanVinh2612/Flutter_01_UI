import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/app_bar.dart';
import 'package:flutter_01/src/model/settings_mode.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Settings'),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: settingsMode.length,
              itemBuilder: (_, int index) {
                return Container(
                  height: 80,
                  margin: const EdgeInsets.only(bottom: 16),
                  color: const Color(0xffF7F7F7),
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          settingsMode[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: Color(0xff838391),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Icon(settingsMode[index].icon),
                      ),
                    ],
                  ),
                );
              },
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Log Out',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xffFFB19D),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
