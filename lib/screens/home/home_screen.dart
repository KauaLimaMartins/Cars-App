import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:plants/screens/home/widgets/body_widget.dart';
import 'package:plants/screens/home/widgets/sidebar_menu_widget.dart';

import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPage = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(context),
      drawer: Drawer(
        elevation: 3.0,
        child: SidebarMenuWidget(),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedPage,
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor.withOpacity(0.5),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.info),
            title: Text('Sobre'),
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor.withOpacity(0.5),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.phone),
            title: Text('Contato'),
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor.withOpacity(0.5),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Contato'),
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor.withOpacity(0.5),
          ),
        ],
        onItemSelected: (index) => setState(() => _selectedPage = index),
      ),
      body: Stack(
        children: <Widget>[
          BodyWidget(),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext scaffContext) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () => _scaffoldKey.currentState.openDrawer(),
      ),
    );
  }
}
