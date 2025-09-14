import 'package:basics/carQuikApp1208/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../carQuikApp1208/carBrand_ui.dart';
import '../carQuikApp1208/inbox.dart';
import '../carQuikApp1208/wishList.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int selectedIndex = 0;
  static const List<dynamic> _widgetOptions = [
    CarBrand(),
    Wishlist(),
    Inbox(),
    Profile(),
  ];

  void _onItemTaped(int intex) {
    setState(() {
      selectedIndex = intex; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor:   Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'Search',
            backgroundColor:   Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Search',
            backgroundColor:  Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor:   Colors.white
          ),
        ],
       type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        selectedItemColor : Colors.black,unselectedItemColor: Colors.black,
        iconSize: 40,onTap: _onItemTaped,elevation: 5,
      ),
    );
  }
}
