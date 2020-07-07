import 'package:flutter/material.dart';
import 'package:plants/screens/detail/widgets/body_widget.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({
    @required this.image,
    @required this.car,
    @required this.carmaker,
    @required this.price,
  });

  final String image, car, carmaker, price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(
        image: image,
        car: car,
        carmaker: carmaker,
        price: price,
      ),
    );
  }
}
