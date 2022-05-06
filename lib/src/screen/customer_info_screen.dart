import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/app_bar.dart';
import 'package:flutter_svg/svg.dart';

class CustomerInfoScreen extends StatefulWidget {
  const CustomerInfoScreen({Key? key}) : super(key: key);

  @override
  State<CustomerInfoScreen> createState() => _CustomerInfoScreenState();
}

class _CustomerInfoScreenState extends State<CustomerInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Сustomer info'),
      body: customerInfoBody(),
    );
  }

  Widget customerInfoBody() {
    List indexImages = [
      'assets/images/img_customerinfo1.png',
      'assets/images/img_customerinfo2.png',
      'assets/images/img_customerinfo3.png',
      'assets/images/img_customerinfo4.png',
      'assets/images/img_customerinfo5.png'
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Portfolio',
            style: TextStyle(
                fontSize: 24,
                color: Color(0xff525464),
                fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 17),
            child: Text(
              'The last completed works of the contractor are shown below.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff616173),
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Container(
            height: 255.0,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 288,
                  child: Image.asset(
                    indexImages[0],
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(indexImages[1]),
                    Image.asset(indexImages[2]),
                    Image.asset(indexImages[3]),
                    Image.asset(indexImages[4]),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 57),
            child: Row(
              children: [
                SvgPicture.asset('assets/icon/star.svg'),
                SvgPicture.asset('assets/icon/star.svg'),
                SvgPicture.asset('assets/icon/star.svg'),
                SvgPicture.asset('assets/icon/star.svg'),
                SvgPicture.asset(
                  'assets/icon/star.svg',
                  color: Color(0xffE2E2EF),
                ),
              ],
            ),
          ),
          const Text(
            'Details',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xff525464),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 17.0),
            child: Text(
              'I have been working in this position for over 10 years! I have created many design solutions and I think my main best quality is creativity. If you liked my work, please contact me and see the professionalism and quality of my services.',
              style: TextStyle(fontSize: 14, color: Color(0xff616173)),
            ),
          ),
          const Expanded(child: SizedBox()),
          const Text(
            'Read more',
            style: TextStyle(
              fontSize: 16,
              decoration: TextDecoration.underline,
              color: Color(0xffFFB19D),
            ),
          ),
          const SizedBox(
            height: 40.0,
          )
        ],
      ),
    );
  }
}
