import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/app_bar.dart';
import 'package:flutter_01/src/model/Orders_mode.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../components/orders_progress/itemProduct.dart';
import '../components/widgetButtonCustom.dart';

class OrdersInProgressScreen extends StatefulWidget {
  const OrdersInProgressScreen({Key? key}) : super(key: key);

  @override
  State<OrdersInProgressScreen> createState() => _OrdersInProgressScreenState();
}

class _OrdersInProgressScreenState extends State<OrdersInProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Orders in progress'),
      body: _ordersInProgressBody(),
    );
  }

  Widget _ordersInProgressBody() {
    return Column(
      children: [
        SingleChildScrollView(child: listOrders()),
        // Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(
                child: widgetcustombutton(
                    type: 'Archive', color: 0xffF2F2F2, textColor: 0xff838391),
              ),
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: widgetcustombutton(
                    type: 'In work', color: 0xff20C3AF, textColor: 0xffF2F2F2),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget listOrders() {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: listProduct.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.5,
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 0),
        itemBuilder: (_, index) => ItemProduct(
            images: listProduct[index].imagess,
            name: listProduct[index].title,
            price: listProduct[index].price),
      ),
    );
  }
}
