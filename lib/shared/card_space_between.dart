// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class CardSpaceBetween extends StatelessWidget {
  final Widget firstTile;
  final Widget secondTitle;
  final Widget iconButton;
  final Color backgroundColor;
  final double BorderRadiusNumbre;
  final double heightNumbre;
  CardSpaceBetween({
    super.key,
    required this.firstTile,
    required this.secondTitle,
    required this.backgroundColor,
    required this.BorderRadiusNumbre,
    required this.heightNumbre,
    required this.iconButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: heightNumbre,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(BorderRadiusNumbre),
            border: Border(),
            color: backgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    firstTile,
                    secondTitle,
                  ],
                ),
              ),
            ),
            iconButton,
          ],
        ));
  }
}
