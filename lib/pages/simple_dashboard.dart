// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../shared/appbar.dart';
import '../shared/custom_bottom_navigation_bar.dart';
import '../shared/dashboard_cards.dart';

class SimpleDashboard extends StatefulWidget {
  const SimpleDashboard({super.key});

  @override
  State<SimpleDashboard> createState() => _SimpleDashboardState();
}

class _SimpleDashboardState extends State<SimpleDashboard> {
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
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
                              'Nombres des tâches en attente d\'exécution',
                              style: TextStyle(color: Color(0xFF9c9c9c)),
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
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
                              'Taux d\'exécution',
                              style: TextStyle(color: Color(0xFF9c9c9c)),
                            ),
                          ),
                        ],
                      )),
                ),
              ]),
            ),
          )),
        ]),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
