import 'package:flutter/material.dart';
import 'package:plants/constants.dart';

import 'header_with_search_box_widget.dart';
import 'title_with_btn_widget.dart';
import 'promotion_cars_widget.dart';
import 'featured_cars_widget.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height and width of our screen
    Size size = MediaQuery.of(context).size;

    // It enable scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithBtn(
            title: 'Promoções',
            press: () {},
          ),
          PromotionCars(),
          TitleWithBtn(
            title: 'SUV',
            press: () {},
          ),
          FeaturedCars(
            carType: 'SUV',
          ),
          SizedBox(height: kDefaultPadding),
          TitleWithBtn(
            title: 'Sedan',
            press: () {},
          ),
          FeaturedCars(
            carType: 'Sedan',
          ),
          SizedBox(height: kDefaultPadding),
          TitleWithBtn(
            title: 'Hatch',
            press: () {},
          ),
          FeaturedCars(
            carType: 'Hatch',
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
