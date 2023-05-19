// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class CustomButtonsBar extends StatelessWidget {
  final int heightNumbre;
  final Widget CustomButtonsTabBar;
  final Widget CustomTabBarView;
  CustomButtonsBar(
      {Key? key,
      required this.heightNumbre,
      required this.CustomButtonsTabBar,
      required this.CustomTabBarView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: heightNumbre,
      child: Column(
        children: <Widget>[
          CustomButtonsTabBar,
          Expanded(
            child: CustomTabBarView,
          ),
        ],
      ),
    );
  }
}
