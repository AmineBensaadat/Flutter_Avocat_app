// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class DashboardCards extends StatelessWidget {
  final Widget centerChilds;
  final Color backgroundColor;
  final double BorderRadiusNumbre;
  // final double heightNumbre;
  DashboardCards({
    super.key,
    required this.centerChilds,
    required this.backgroundColor,
    required this.BorderRadiusNumbre,
    // required this.heightNumbre,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(BorderRadiusNumbre),
          border: Border(),
          color: backgroundColor),
      //height: 150,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Container(
          child: centerChilds,
        ),
      ),
    );
  }
}
