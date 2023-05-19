// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';

import '../shared/appbar.dart';
import '../shared/custom_bottom_navigation_bar.dart';

class Folders extends StatefulWidget {
  const Folders({super.key});

  @override
  State<Folders> createState() => _FoldersState();
}

class _FoldersState extends State<Folders> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String name = '';
  String ref = '';
  String client = '';
  String createdAt = '';
  String importance = '';
  String gestionnaire = '';
  String lieu = '';
  String juridiction = '';
  String departement = '';
  String region = '';
  String nature = '';
  @override
  Widget build(BuildContext context) {
    setState(() {
      name = 'Amine Bensaadat';
      ref = '512541';
      client = 'ATIJARI';
      createdAt = '30/04/2023';
      juridiction = 'CASABLANCA';
      importance = 'Elvée';
      gestionnaire = 'Mohmed';
      lieu = 'CASABLANCA';
      juridiction = 'Nationale';
      departement = 'Logistique';
      region = 'ANFA';
      nature = 'A';
    });
    return SafeArea(
        child: Scaffold(
      appBar: Appbar(),
      key: scaffoldKey,
      drawer: Padding(
        padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
        child: Drawer(
            child: ListView(
          children: <Widget>[
            Container(
              height: 30.0,
            ),
            ListTile(
              title: Text(
                'Fiche Dossier',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFD66746)),
              ),
              //leading: Icon(Icons.folder),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Fiche de Temps',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF101751))),
              //leading: Icon(Icons.people),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Procédures',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF101751))),
              //leading: Icon(Icons.star),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Documents',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF101751))),
              //leading: Icon(Icons.timer),
              onTap: () {
                print("Clicked");
              },
            ),
          ],
        )),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.5, color: Color(0xFFE5E7EA)),
                ),
                color: Color(0xFFF4F6FA)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/Fichier15@2x.png',
                        height: 40),
                    onPressed: () {
                      //open or close drawer manually
                      if (scaffoldKey.currentState!.isDrawerOpen) {
                        scaffoldKey.currentState!.closeDrawer();
                        //close drawer, if drawer is open
                      } else {
                        scaffoldKey.currentState!.openDrawer();
                        //open drawer, if drawer is closed
                      }
                    },
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
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
                            ),
                          ],
                        ),
                        Container(
                          width: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "M. Bensouda Mouhamed",
                                style: TextStyle(
                                    color: Color(0xFFADB6CA),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text("12365",
                                      style: TextStyle(
                                        color: Color(0xFFADB6CA),
                                        fontSize: 16,
                                      )),
                                  Image(
                                    image: AssetImage(
                                      'assets/images/EllipseGreen.png',
                                    ),
                                    width: 15,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: 9000,
              child: Container(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 0.5, color: Color(0xFFE5E7EA)),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Fiche Dossier",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFD66746)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Nom Dossier",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child: Center(child: Text(name))),
                                  ),
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Réf Dossier",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child: Center(child: Text(ref))),
                                  ),
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Client",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child: Center(child: Text(client))),
                                  ),
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Date création",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child: Center(child: Text(createdAt))),
                                  ),
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Importance",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child: Center(child: Text(importance))),
                                  ),
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Gestionnaire",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child:
                                            Center(child: Text(gestionnaire))),
                                  ),
                                ],
                              )),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 0.5, color: Color(0xFFE5E7EA)),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Information Dossier",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFD66746)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Lieu",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child: Center(child: Text(lieu))),
                                  ),
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Nature",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child: Center(child: Text(nature))),
                                  ),
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Juridiction",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child:
                                            Center(child: Text(juridiction))),
                                  ),
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "département",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child:
                                            Center(child: Text(departement))),
                                  ),
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Région",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF101751)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                        width: 200,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border(),
                                            color: Color(0xFFF4F6FA)),
                                        child: Center(child: Text(region))),
                                  ),
                                ],
                              )),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 0.5, color: Color(0xFFE5E7EA)),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Planning à venir",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFD66746)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 15, 0),
                              child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border(),
                                      color: Color(0xFFD66746)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 10, 0, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              Text(
                                                "Rendez Vous",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "15/11/2023 à 12h30",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 15, 15),
                                        child: Container(
                                          height: 25,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 15, 0),
                              child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border(),
                                      color: Color(0xFFD66746)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 10, 0, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              Text(
                                                "Rendez Vous",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "15/11/2023 à 12h30",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 15, 15),
                                        child: Container(
                                          height: 25,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        )),
                  ],
                ),
              )),
            ),
          ),
        )
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
    ));
  }
}
