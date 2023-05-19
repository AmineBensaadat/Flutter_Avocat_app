// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Appbar extends StatefulWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();

  @override
  Size get preferredSize => const Size(double.maxFinite, 130);
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        shape: Border(
            bottom: BorderSide(
          color: Color(0xFFD66746),
          width: 8,
        )),
        elevation: 5,
        centerTitle: false,
        automaticallyImplyLeading: false,
        toolbarHeight: 130,
        backgroundColor: Color(0xFF101751),
        actions: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 10, 15),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Image.asset('assets/images/Clients.png'),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  "Aluoi Rachid",
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ],
        leadingWidth: 100,
        // ignore: unnecessary_new
        leading: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 15),
          child: Center(
              child: Image.asset("assets/images/LogoAvocatsAppxxxhdpi.png")),
        ));
  }
}
