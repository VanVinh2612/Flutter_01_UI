import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/app_bar.dart';
import 'package:flutter_01/src/components/paymentCards/itemPayCards.dart';
import 'package:flutter_01/src/model/payment_services_mode.dart';

import '../components/paymentServices/itemListPayServices.dart';
import '../components/widgetButtonCustom.dart';

class PaymentCardsDetailScreen extends StatefulWidget {
  const PaymentCardsDetailScreen({Key? key}) : super(key: key);

  @override
  State<PaymentCardsDetailScreen> createState() =>
      _PaymentCardsDetailScreenState();
}

class _PaymentCardsDetailScreenState extends State<PaymentCardsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Payment cards'),
      body: paymentCardsBody(),
    );
  }

  Widget paymentCardsBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          const itemPaymentCard(),
          Container(
            margin: const EdgeInsets.only(top: 40.0, bottom: 16),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Card Number',
              style: TextStyle(
                  color: Color(0xff525464), fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            color: const Color(0xffF7F7F7),
            height: 60.0,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.all(22),
              child: Text(
                '*** *** *** 3872',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffB0B0C3),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: itemTimePaymentCard(
                    'Exp. Month', '07', Icons.arrow_drop_down),
              ),
              Expanded(
                child: itemTimePaymentCard(
                    'Exp.Year', '2022', Icons.arrow_drop_down),
              ),
              Expanded(
                child: itemTimePaymentCard('CVV', '***', Icons.visibility_off),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          const widgetcustombutton(
              type: 'Save card', color: 0xff20C3AF, textColor: 0xffF2F2F2),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Widget itemTimePaymentCard(String name, String number, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40.0, bottom: 16),
            alignment: Alignment.centerLeft,
            child: Text(
              name,
              style: const TextStyle(
                  color: Color(0xff525464), fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            color: const Color(0xffF7F7F7),
            height: 60.0,
            width: 100.0,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    number,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xffB0B0C3),
                    ),
                  ),
                  Icon(icon),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listPayment() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listPay.length,
      itemBuilder: (context, index) => itemListPayment(
        images: listPay[index].img,
        name: listPay[index].name,
        price: listPay[index].price,
      ),
    );
  }
}
