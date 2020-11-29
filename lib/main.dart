import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
      bottomNavigationBar: getBottomNavigation(),
    );
  }

  BottomNavigationBar getBottomNavigation() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("images/assignmentgrey.svg",
                color: Colors.blue),
            activeIcon: SvgPicture.asset("images/assignmentgrey.svg",
                color: Colors.red),
            label: "Office"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("images/assignmentgrey.svg",
                color: Colors.blue),
            activeIcon: SvgPicture.asset("images/assignmentgrey.svg",
                color: Colors.red),
            label: "Lab"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("images/assignmentgrey.svg",
                color: Colors.blue),
            activeIcon: SvgPicture.asset("images/assignmentgrey.svg",
                color: Colors.red),
            label: "Shop"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("images/assignmentgrey.svg",
                color: Colors.blue),
            activeIcon: SvgPicture.asset("images/assignmentgrey.svg",
                color: Colors.red),
            label: "Room"),
      ],
      // backgroundColor:AppColors.splashScreenBackgroundColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.blue,
      // selectedLabelStyle: BaseStyles.bottomNavigationBarItemSelectedLabelText,
      // unselectedLabelStyle: BaseStyles.bottomNavigationBarItemSelectedLabelText,
      currentIndex: _selectedIndex,

      onTap: bottomNavigationItemTapped,
    );
  }

  void bottomNavigationItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
