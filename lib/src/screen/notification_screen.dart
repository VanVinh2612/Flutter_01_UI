import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/notification_s/itemListNotification.dart';
import 'package:flutter_01/src/model/notification_mode.dart';

import '../components/app_bar.dart';
import '../components/widgetButtonCustom.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Notification'),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: listviewNotification(),
            ),
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: widgetcustombutton(
                    type: 'View all', color: 0xff20C3AF, textColor: 0xffF2F2F2),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget listviewNotification() {
    return ListView.builder(
      itemCount: listNotification.length,
      itemBuilder: (context, index) => ItemListNotifi(
          images: listNotification[index].images,
          name: listNotification[index].name,
          companyName: listNotification[index].companyName,
          description: listNotification[index].description),
    );
  }
}
