class PaymentServices {
  String img, name, price;

  PaymentServices({required this.img, required this.name, required this.price});
}

List<PaymentServices> listPay = [
  PaymentServices(
      img: 'assets/images/img_payment_screen.png',
      name: 'Welding works',
      price: '\$40'),
  PaymentServices(
      img: 'assets/images/img_payment_screen2.png',
      name: 'Foundation works',
      price: '\$55'),
  PaymentServices(
      img: 'assets/images/img_payment_screen3.png',
      name: 'Waterproofing',
      price: '\$20'),
];
