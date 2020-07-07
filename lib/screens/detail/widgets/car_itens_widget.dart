import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants/constants.dart';

class CarItensWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _itemCard(
              'assets/icons/sensor.svg', 'Sensor de\nestacionamento', size),
          _itemCard('assets/icons/airbag.svg', 'Airbag', size),
          _itemCard('assets/icons/alarm.svg', 'Alarme', size),
          _itemCard('assets/icons/cooler.svg', 'Ar\ncondicionado', size),
          _itemCard('assets/icons/windshield.svg', 'Vidro\nelétrico', size),
          _itemCard('assets/icons/abs.svg', 'Freio\nABS', size),
        ],
      ),
    );
  }

  Container _itemCard(String icon, String text, Size size) {
    return Container(
      width: size.width * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  spreadRadius: -8.0,
                  blurRadius: 20,
                  color: kPrimaryColor,
                ),
              ],
            ),
            child: SvgPicture.asset(
              icon,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
