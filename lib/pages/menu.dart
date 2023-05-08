// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../shared/appbar.dart';
import '../shared/custom_bottom_navigation_bar.dart';
import '../shared/menu_icon_button.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: Column(children: [
        SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            "Menu",
            style: TextStyle(
                fontSize: 40,
                color: Color(0xFF101751),
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: MenuIconButton(
                        icon_img: 'assets/images/Cltsgriséexxxhdpi.png',
                        screen_name: "screen to open"),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Clients",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFe7e7e7),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: MenuIconButton(
                        icon_img: 'assets/images/Contactsgriséxxxhdpi.png',
                        screen_name: "screen to open"),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Contacts",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFe7e7e7),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                      child: MenuIconButton(
                          icon_img: 'assets/images/Dossiersgriséexxxhdpi.png',
                          screen_name: "screen to open")),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Dossiers",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFe7e7e7),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 40,
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: MenuIconButton(
                        icon_img: 'assets/images/Agenda.png',
                        screen_name: "screen to open"),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Agenda",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFe7e7e7),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: CustomBottomNavigationBar(total_button: 2),
    );
  }
}
