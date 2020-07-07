import 'package:flutter/material.dart';
import 'package:plants/screens/detail/detail_screen.dart';

import '../../../constants.dart';

class FeaturedCars extends StatefulWidget {
  FeaturedCars({
    Key key,
    @required this.carType,
  }) : super(key: key);

  final String carType;

  @override
  _FeaturedCarsState createState() => _FeaturedCarsState();
}

class _FeaturedCarsState extends State<FeaturedCars> {
  Row _carList() {
    switch (widget.carType) {
      case 'Sedan':
        return Row(
          children: <Widget>[
            FeaturedCarCard(
              image: 'assets/images/cruze20.jpg',
              car: 'Cruze 2020',
              carmaker: 'Chevrolet',
              price: '120.000,00',
            ),
            FeaturedCarCard(
              image: 'assets/images/corolla20.png',
              car: 'Corolla 2016',
              carmaker: 'Toyota',
              price: '130.000,00',
            ),
            FeaturedCarCard(
              image: 'assets/images/vision20.jpg',
              car: 'Vision-S 2020',
              carmaker: 'Sony',
              price: '160.000,00',
            ),
          ],
        );
        break;

      case 'Hatch':
        return Row(
          children: <Widget>[
            FeaturedCarCard(
              image: 'assets/images/clio20.jpg',
              car: 'Clio 2020',
              carmaker: 'Renault',
              price: '50.000,00',
            ),
            FeaturedCarCard(
              image: 'assets/images/onix20.jpg',
              car: 'Onix 2020',
              carmaker: 'Chevrolet',
              price: '45.000,00',
            ),
            FeaturedCarCard(
              image: 'assets/images/fox14.jpg',
              car: 'C3 2018',
              carmaker: 'Citroën',
              price: '54.000,00',
            ),
          ],
        );
        break;

      case 'SUV':
        return Row(
          children: <Widget>[
            FeaturedCarCard(
              image: 'assets/images/kicks2020.jpg',
              car: 'Kicks 2020',
              carmaker: 'Nissan',
              price: '100.000,00',
            ),
            FeaturedCarCard(
              image: 'assets/images/fit16.jpg',
              car: 'Fit 2016',
              carmaker: 'Honda',
              price: '55.000,00',
            ),
            FeaturedCarCard(
              image: 'assets/images/c318.jpg',
              car: 'C3 2018',
              carmaker: 'Citroën',
              price: '54.000,00',
            ),
          ],
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: kDefaultPadding),
      scrollDirection: Axis.horizontal,
      child: _carList(),
    );
  }
}

class FeaturedCarCard extends StatelessWidget {
  const FeaturedCarCard({
    Key key,
    @required this.image,
    @required this.car,
    @required this.carmaker,
    @required this.price,
  }) : super(key: key);

  final String image, car, carmaker, price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              image: image,
              car: car,
              carmaker: carmaker,
              price: price,
            ),
          ),
        );
      },
      child: Container(
        width: size.width * 0.8,
        height: 250,
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 10,
              color: kPrimaryColor.withOpacity(0.23),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
