import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/app_bar.dart';
import 'package:flutter_01/src/model/payment_services_mode.dart';

import '../components/paymentServices/itemListPayServices.dart';
import '../components/widgetButtonCustom.dart';

class PaymentServicesScreen extends StatefulWidget {
  const PaymentServicesScreen({Key? key}) : super(key: key);

  @override
  State<PaymentServicesScreen> createState() => _PaymentServicesScreenState();
}

class _PaymentServicesScreenState extends State<PaymentServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Payment for services'),
      body: paymentBody(),
    );
  }

  Widget paymentBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0xffF7F6F5),
                ),
              ),
            ),
            child: listPayment(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff525464),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  alignment: Alignment.centerRight,
                  child: const Text(
                    '\$105',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff525464)),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 18),
                child: widgetcustombutton(
                    type: 'Checkout', color: 0xff20C3AF, textColor: 0xffF2F2F2),
              ),
              Text(
                'Continue Shopping',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: Color(0xffFFB19D),
                ),
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
