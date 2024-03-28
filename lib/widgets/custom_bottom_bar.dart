import 'package:flutter/material.dart';

import '../presentation/compare_navbar_screen/compare_navbar_screen.dart';
import '../presentation/homapage_screen/homapage_screen.dart';
import '../presentation/news_page/news_page.dart';
import '../presentation/price_navbar_screen/price_navbar_screen.dart';
import '../presentation/used_cars_page/used_cars_page.dart';

class CustomBottomBar extends StatefulWidget {
  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomapageScreen(),
    UsedCarsPage(),
    CompareNavbarScreen(),
    PriceNavbarScreen(),
    NewsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/images/new_active.png",
              height: 40,
              // color: appTheme.cyan900,
            ),
            icon: Image.asset(
              "assets/images/new_in.png",
              height: 40,
              // color: Colors.black,
            ),
            label: 'New',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/images/used_ac.png",
              height: 40,
              // color: appTheme.cyan900,
            ),
            icon: Image.asset(
              "assets/images/used_in.png",
              height: 40,
              // color: Colors.black,
            ),
            label: 'Used',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/images/compair_ac.png",
              height: 40,
              // color: appTheme.cyan900,
            ),
            icon: Image.asset(
              "assets/images/compair_in.png",
              height: 40,
              // color: Colors.black,
            ),
            label: 'Compare',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/images/price_ac.png",
              height: 40,
              // color: appTheme.cyan900,
            ),
            icon: Image.asset(
              "assets/images/price_in.png",
              height: 40,
              // color: Colors.black,
            ),
            label: 'Price',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/images/news_ac.png",
              height: 40,
              // color: appTheme.cyan900,
            ),
            icon: Image.asset(
              "assets/images/news_in.png",
              height: 40,
              // color: Colors.black,
            ),
            label: 'News',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
