import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/app_bar.dart';
import 'package:flutter_01/src/components/profile/itemListProfile.dart';
import 'package:flutter_01/src/components/profile/navigationDrawerWidget.dart';
import 'package:flutter_01/src/model/profile_mode.dart';
import 'package:flutter_svg/svg.dart';

import '../components/widgetButtonCustom.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: const CustomAppbar(
        title: '',
      ),
      body: Builder(
        builder: (context) {
          return Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/img_profile.jpeg'),
                        radius: 57.0,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      child: const Text(
                        'Jeremías del Pozo',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff525464),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: const Text(
                            'New York',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff838391),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: SvgPicture.asset('assets/icon/oval.svg'),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: const Text(
                            'ID: 1120611',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff838391),
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 17.0),
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            color: Color(0xffFFB19D),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Expanded(
                            child: widgetcustombutton(
                                type: 'About Me',
                                color: 0xffF2F2F2,
                                textColor: 0xff838391),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: widgetcustombutton(
                                type: 'Reviews',
                                color: 0xff20C3AF,
                                textColor: 0xffF2F2F2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color(0xff525464),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 40.0),
                    child: ListView.builder(
                      itemCount: profileDetails.length,
                      itemBuilder: (context, index) => itemListProfile(
                          svgIcon: profileDetails[index].icon,
                          title: profileDetails[index].title,
                          name: profileDetails[index].text),
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
