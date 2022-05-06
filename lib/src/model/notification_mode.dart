class Notification {
  String images, name, companyName, description;

  Notification(
      {required this.images,
      required this.name,
      required this.companyName,
      required this.description});
}

List<Notification> listNotification = [
  Notification(
      images: 'assets/images/img_face_joen.png',
      name: 'Joel Rowe',
      companyName: 'Bitrow Company',
      description:
          'Sorry, all the artists in the Interior Design category are busy right now. If your task is still relevant - go to the task details page and click "Extend task”.'),
  Notification(
      images: 'assets/images/img_face_cole.png',
      name: 'Cole Payne',
      companyName: 'Corporation Kraton',
      description:
          'We have found a contractor for your task "Cleaning services”. Please see the details.'),
  Notification(
      images: 'assets/images/img_face_elva.png',
      name: 'Elva Stone',
      companyName: 'Grand Service Company',
      description:
          'David Coleman is ready to complete your assignment and get started soon! View David'
          's profile and carefully review the order details. Then confirm the order.'),
];
