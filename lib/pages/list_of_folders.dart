// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:avocat/shared/card_space_between.dart';
import 'package:flutter/material.dart';
import '../shared/appbar.dart';
import '../shared/custom_bottom_navigation_bar.dart';

class ListOfFolders extends StatefulWidget {
  const ListOfFolders({super.key});

  @override
  State<ListOfFolders> createState() => _ListOfFoldersState();
}

class _ListOfFoldersState extends State<ListOfFolders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5E7EA),
        appBar: Appbar(),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                ImageIcon(
                  AssetImage("assets/images/Dossiers.png"),
                  size: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Dossiers",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF101751)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              //width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: Color(0xFF101751),
                    ),
                    hintText: "Recherche",
                    border: InputBorder.none),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            // ignore: prefer_const_constructors
            child: Text(
              "Liste des Dossiers",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF101751)),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                  child: CardSpaceBetween(
                      backgroundColor: Colors.white,
                      BorderRadiusNumbre: 10,
                      heightNumbre: 50,
                      firstTile: Text(
                        'Rendez Vous',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      secondTitle: Text(
                        "12365",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      iconButton: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: Container(
                          height: 25,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF101751),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                  child: CardSpaceBetween(
                      backgroundColor: Colors.white,
                      BorderRadiusNumbre: 10,
                      heightNumbre: 50,
                      firstTile: Text(
                        'Rendez Vous',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      secondTitle: Text(
                        "12365",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      iconButton: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: Container(
                          height: 25,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF101751),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                  child: CardSpaceBetween(
                      backgroundColor: Colors.white,
                      BorderRadiusNumbre: 10,
                      heightNumbre: 50,
                      firstTile: Text(
                        'Rendez Vous',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      secondTitle: Text(
                        "12365",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      iconButton: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: Container(
                          height: 25,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF101751),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                  child: CardSpaceBetween(
                      backgroundColor: Colors.white,
                      BorderRadiusNumbre: 10,
                      heightNumbre: 50,
                      firstTile: Text(
                        'Rendez Vous',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      secondTitle: Text(
                        "12365",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      iconButton: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: Container(
                          height: 25,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF101751),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                  child: CardSpaceBetween(
                      backgroundColor: Colors.white,
                      BorderRadiusNumbre: 10,
                      heightNumbre: 50,
                      firstTile: Text(
                        'Rendez Vous',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      secondTitle: Text(
                        "12365",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      iconButton: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: Container(
                          height: 25,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF101751),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                  child: CardSpaceBetween(
                      backgroundColor: Colors.white,
                      BorderRadiusNumbre: 10,
                      heightNumbre: 50,
                      firstTile: Text(
                        'Rendez Vous',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      secondTitle: Text(
                        "12365",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      iconButton: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: Container(
                          height: 25,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF101751),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                  child: CardSpaceBetween(
                      backgroundColor: Colors.white,
                      BorderRadiusNumbre: 10,
                      heightNumbre: 50,
                      firstTile: Text(
                        'Rendez Vous',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      secondTitle: Text(
                        "12365",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      iconButton: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: Container(
                          height: 25,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF101751),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                  child: CardSpaceBetween(
                      backgroundColor: Colors.white,
                      BorderRadiusNumbre: 10,
                      heightNumbre: 50,
                      firstTile: Text(
                        'Rendez Vous',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      secondTitle: Text(
                        "12365",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      iconButton: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: Container(
                          height: 25,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF101751),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                  child: CardSpaceBetween(
                      backgroundColor: Colors.white,
                      BorderRadiusNumbre: 10,
                      heightNumbre: 50,
                      firstTile: Text(
                        'Rendez Vous',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      secondTitle: Text(
                        "12365",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF101751)),
                      ),
                      iconButton: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: Container(
                          height: 25,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF101751),
                          ),
                        ),
                      )),
                ),
              ]),
            ),
          )),
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 80.0,
          width: 80.0,
          child: FloatingActionButton(
            backgroundColor: Color(0xFF101751),
            onPressed: () {},
            child: Image.asset('assets/images/Fichier14@2x.png', height: 60),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
