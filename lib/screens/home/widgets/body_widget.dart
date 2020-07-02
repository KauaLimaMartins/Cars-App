import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plants/constants.dart';

import 'header_with_search_box_widget.dart';

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
        ],
      ),
    );
  }
}
