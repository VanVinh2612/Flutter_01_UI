import 'package:flutter/material.dart';

class ProfileDetail {
  String icon, text, title;

  ProfileDetail({required this.icon,required this.title, required this.text});
}

List<ProfileDetail> profileDetails = [
  ProfileDetail(
    icon: 'assets/icon/phone_icon.svg',
    title: 'Phone number',
    text: '+3746589923',
  ),
  ProfileDetail(
    icon: 'assets/icon/email_icon.svg',
    title: 'Email',
    text: 'conrad@gmail.com',
  ),
  ProfileDetail(
    icon: 'assets/icon/completed_icon.svg',
    title: 'Completed projects',
    text: '248',
  ),
];
