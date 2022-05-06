import 'package:flutter/material.dart';

class SettingMode {
  String name;
  IconData icon;
  SettingMode({required this.name, required this.icon});
}

List<SettingMode> settingsMode = [
  SettingMode(name: 'Payment cards', icon: Icons.arrow_forward_ios),
  SettingMode(name: 'Write to us', icon: Icons.arrow_forward_ios),
  SettingMode(name: 'Rate us on app store', icon: Icons.arrow_forward_ios),
  SettingMode(name: 'About Us', icon: Icons.arrow_forward_ios),
];
