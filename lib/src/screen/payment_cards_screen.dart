import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/app_bar.dart';
import 'package:flutter_01/src/components/paymentCards/itemListPaymentCards.dart';
import 'package:flutter_01/src/components/paymentCards/itemPayCards.dart';
import '../components/widgetButtonCustom.dart';
import '../model/payment_cards_mode.dart';

class PaymentCardsScreen extends StatefulWidget {
  const PaymentCardsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentCardsScreen> createState() => _PaymentCardsScreenState();
}

class _PaymentCardsScreenState extends State<PaymentCardsScreen> {
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
        children: [
          const SizedBox(
            height: 50,
          ),
          listPaymentCards(),
          const Expanded(child: SizedBox()),
          const widgetcustombutton(
              type: 'Add new card', color: 0xff20C3AF, textColor: 0xffF2F2F2),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Widget listPaymentCards() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listPayCard.length,
      itemBuilder: (context, index) => itemListPaymentCards(
        images: listPayCard[index].img,
        number: listPayCard[index].number,
        time: listPayCard[index].time,
        colorBegin: listPayCard[index].colorBegin,
        colorEnd: listPayCard[index].colorEnd,
      ),
    );
  }
}
