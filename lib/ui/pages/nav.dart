import 'package:convex_bottom_navigation/convex_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2_gsg/ui/pages/home.dart';

import 'MyCourses.dart';

class Nav extends StatefulWidget {
  @override
  NavState createState() => new NavState();
}

class NavState extends State<Nav> {
  int currentIndex = 0;
  List<Widget> children = [
    Home(),
    MyCourses(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.amber,
    ),
  ];

  Widget buildBottomNavigationBar() {
    return ConvexBottomNavigation(
      activeIconColor: Colors.black,
      inactiveIconColor: Colors.grey,
      textColor: Colors.black,
      bigIconPadding: 15.0,
      circleSize: CircleSize.SMALL,
      smallIconPadding: 10.0,
      circleColor: Colors.white,
      tabs: [
        TabData(
          icon: const Icon(Icons.home_outlined),
          title: "Home",
        ),
        TabData(
          icon: const Icon(Icons.shopping_bag_outlined),
          title: "My courses",
        ),
        TabData(
          icon: const Icon(Icons.access_time),
          title: "Calendar",
        ),
        TabData(
          icon: const Icon(Icons.person_outline),
          title: "Profile",
        ),
      ],
      onTabChangedListener: (position) {
        setState(() {
          currentIndex = position;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: children[currentIndex],
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }
}


