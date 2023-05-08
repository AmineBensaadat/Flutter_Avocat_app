// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF101751),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/Dashboard.png', height: 40),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/Menu.png', height: 40),
          label: "",
        ),
      ],
      currentIndex: 0,
      onTap: (int index) {},
    );
  }
}
