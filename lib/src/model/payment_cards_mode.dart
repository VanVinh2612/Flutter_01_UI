class PaymentCards {
  String img, time, number;
  int colorBegin, colorEnd;

  PaymentCards({required this.img, required this.time, required this.number, required this.colorBegin, required this.colorEnd});
}

List<PaymentCards> listPayCard = [
  PaymentCards(
      img: 'assets/images/visa_logo.png',
      number: '*** *** *** 3872',
      time: '17/2020',
      colorBegin: 0xff02DA80,
      colorEnd: 0xff0284D8
      ),
  PaymentCards(
      img: 'assets/images/visa_logo.png',
      number: '*** *** *** 2873',
      time: '07/2022',
      colorBegin: 0xff02DA80,
      colorEnd: 0xff0284D8),
  PaymentCards(
      img: 'assets/images/mastercard_logo.png',
      number: '*** *** *** 3212',
      time: '10/2024',
      colorBegin: 0xffF6A11A,
      colorEnd: 0xffF23B14),
  PaymentCards(
      img: 'assets/images/visa_logo.png',
      number: '*** *** *** 3412',
      time: '12/2024',
      colorBegin: 0xff02DA80,
      colorEnd: 0xff0284D8),
];
