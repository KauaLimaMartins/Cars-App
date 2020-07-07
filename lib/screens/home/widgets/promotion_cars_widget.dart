import 'package:flutter/material.dart';
import 'package:plants/screens/detail/detail_screen.dart';

import '../../../constants.dart';

class PromotionCars extends StatelessWidget {
  const PromotionCars({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: kDefaultPadding),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendedCarCard(
            image: 'assets/images/eco20.jpg',
            car: 'Ecosport 2020',
            carmaker: 'Ford',
            oldPrice: '9̶0̶.̶0̶0̶0̶,̶0̶0̶',
            promotionPrice: '80.000,00',
          ),
          RecomendedCarCard(
            image: 'assets/images/fox14.jpg',
            car: 'Fox 2014',
            carmaker: 'Volkswagen',
            oldPrice: '4̶5̶.̶0̶0̶0̶,̶0̶0̶',
            promotionPrice: '40.000,00',
          ),
          RecomendedCarCard(
            image: 'assets/images/civic20.jpg',
            car: 'Civic 2020',
            carmaker: 'Honda',
            oldPrice: '1̶3̶5̶.̶0̶0̶0̶,̶0̶0̶',
            promotionPrice: '130.000,00',
          ),
          RecomendedCarCard(
            image: 'assets/images/newfusca.jpg',
            car: 'Elétrico I.D.',
            carmaker: 'Volkswagen',
            oldPrice: '2̶0̶0̶.̶0̶0̶0̶,̶0̶0̶',
            promotionPrice: '180.000,00',
          ),
        ],
      ),
    );
  }
}

class RecomendedCarCard extends StatelessWidget {
  const RecomendedCarCard({
    Key key,
    @required this.image,
    @required this.car,
    @required this.carmaker,
    @required this.oldPrice,
    @required this.promotionPrice,
  }) : super(key: key);

  final String image, car, carmaker, oldPrice, promotionPrice;

  @override
  Widget build(BuildContext context) {
    // It will provie us total height and width of our screen
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      // It will cover 40% of our total width
      width: size.width * 0.6,

      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.6,
            height: size.height * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    image: image,
                    car: car,
                    carmaker: carmaker,
                    price: promotionPrice,
                  ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$car\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: carmaker.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "\$$oldPrice\n",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: '\$$promotionPrice',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
