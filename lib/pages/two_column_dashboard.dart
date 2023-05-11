// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../shared/appbar.dart';
import '../shared/custom_bottom_navigation_bar.dart';
import '../shared/dashboard_cards.dart';

class DashboardTwoColumnCards extends StatefulWidget {
  const DashboardTwoColumnCards({super.key});

  @override
  State<DashboardTwoColumnCards> createState() =>
      _DashboardTwoColumnCardsState();
}

class _DashboardTwoColumnCardsState extends State<DashboardTwoColumnCards> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: Appbar(),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Tableau de bord",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF101751)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 10, 10),
            child: Text(
              "Janvier 2023",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF9c9c9c)),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                Row(
                  // ignore: sort_child_properties_last
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DashboardCards(
                            backgroundColor: Color(0xFFf5f6fa),
                            BorderRadiusNumbre: 10,
                            centerChilds: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "5",
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF101751)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Taux d\'exécution',
                                    style: TextStyle(color: Color(0xFF9c9c9c)),
                                  ),
                                ),
                              ],
                            )), //BoxDecoration
                      ), //Container
                    ), //Flexible
                    SizedBox(
                      width: 20,
                    ), //SizedBox
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DashboardCards(
                            backgroundColor: Color(0xFFf5f6fa),
                            BorderRadiusNumbre: 10,
                            centerChilds: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "42 500.00",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 91, 188, 117)),
                                ),
                                Text(
                                  "MAD",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF101751)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Facturée ce mois ',
                                    style: TextStyle(color: Color(0xFF9c9c9c)),
                                  ),
                                ),
                              ],
                            )), //BoxDecoration
                      ), //Container
                    ) //Flexible
                  ], //<Widget>[]
                  mainAxisAlignment: MainAxisAlignment.center,
                ), //Row
                SizedBox(height: 20),
                Row(
                  // ignore: sort_child_properties_last
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DashboardCards(
                            backgroundColor: Color(0xFFf5f6fa),
                            BorderRadiusNumbre: 10,
                            centerChilds: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "42",
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF101751)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Recouvrement',
                                    style: TextStyle(color: Color(0xFF9c9c9c)),
                                  ),
                                ),
                              ],
                            )), //BoxDecoration
                      ), //Container
                    ), //Flexible
                    SizedBox(
                      width: 20,
                    ), //SizedBox
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DashboardCards(
                            backgroundColor: Color(0xFFf5f6fa),
                            BorderRadiusNumbre: 10,
                            centerChilds: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "42",
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF101751)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Utilisation',
                                    style: TextStyle(color: Color(0xFF9c9c9c)),
                                  ),
                                ),
                              ],
                            )), //BoxDecoration
                      ), //Container
                    ) //Flexible
                  ], //<Widget>[]
                  mainAxisAlignment: MainAxisAlignment.center,
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
