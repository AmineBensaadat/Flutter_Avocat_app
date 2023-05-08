// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../shared/appbar.dart';

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
      body: Column(
        children: [
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
          SingleChildScrollView(
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 10, 15),
                      child: IconButton(
                        icon:
                            Image.asset('assets/images/Cltsgriséexxxhdpi.png'),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "Clients",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 10, 15),
                      child: IconButton(
                        icon: Image.asset(
                            'assets/images/Contactsgriséxxxhdpi.png'),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "Contacts",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 10, 15),
                      child: IconButton(
                        icon: Image.asset(
                            'assets/images/Dossiersgriséexxxhdpi.png'),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "Dossiers",
                        style: TextStyle(fontSize: 15),
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
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF101751),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ("Search"),
          ),
        ],
        currentIndex: 0,
        onTap: (int index) {},
      ),
    );
  }
}
