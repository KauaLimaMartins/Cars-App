import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants/screens/detail/widgets/car_itens_widget.dart';
import 'package:plants/screens/home/home_screen.dart';

import '../../../constants.dart';

import 'title_with_description_and_price_widget.dart';
import 'informations_widget.dart';

class BodyWidget extends StatelessWidget {
  BodyWidget({
    @required this.image,
    @required this.car,
    @required this.carmaker,
    @required this.price,
  });

  final String image, car, carmaker, price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: <Widget>[
        _image(size, context),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              TitleWithDescriptionAndPriceWidget(
                carmaker: carmaker,
                car: car,
                price: price,
              ),
              Divider(height: 40),
              Text(
                'Informações do veículo',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              InformationsWidget(),
              Divider(height: 40),
              Text(
                'Itens do veículo',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                ),
              ),
              CarItensWidget(),
            ],
          ),
        ),
      ],
    );
  }

  Container _image(Size size, BuildContext context) {
    return Container(
      width: size.width * 1,
      height: size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 20,
            color: kPrimaryColor.withOpacity(0.23),
          ),
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: BackButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
