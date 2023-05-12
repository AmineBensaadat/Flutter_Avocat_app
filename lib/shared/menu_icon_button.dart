// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';

class MenuIconButton extends StatelessWidget {
  final String icon_img;
  final String screen_name;

  MenuIconButton({
    Key? key,
    required this.icon_img,
    required this.screen_name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(icon_img),
      onPressed: () {
        print(screen_name);
      },
    );
  }
}
