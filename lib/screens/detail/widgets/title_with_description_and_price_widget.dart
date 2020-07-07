import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithDescriptionAndPriceWidget extends StatelessWidget {
  const TitleWithDescriptionAndPriceWidget({
    Key key,
    @required this.carmaker,
    @required this.car,
    @required this.price,
  }) : super(key: key);

  final String carmaker, car, price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              carmaker,
              style: TextStyle(
                fontSize: 26,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(width: 5),
            Text(
              car,
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          '1.0 FLEX 4P AUTOMATICO ATTRACTIVE',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 10),
        Text(
          'R\$ $price',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ],
    );
  }
}
