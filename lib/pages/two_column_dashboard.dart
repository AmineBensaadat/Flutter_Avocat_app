// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../shared/appbar.dart';
import '../shared/custom_bottom_navigation_bar.dart';
import '../shared/dashboard_cards.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class DashboardTwoColumnCards extends StatefulWidget {
  const DashboardTwoColumnCards({super.key});

  @override
  State<DashboardTwoColumnCards> createState() =>
      _DashboardTwoColumnCardsState();
}

class _DashboardTwoColumnCardsState extends State<DashboardTwoColumnCards> {
  double tauxExecution = 0;
  double factureeCemois = 0;
  double recouvrement = 0;
  double utilisation = 0;
  @override
  Widget build(BuildContext context) {
    setState(() {
      tauxExecution = 60;
      factureeCemois = 42500;
      recouvrement = 100;
      utilisation = 50;
    });
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
                Row(
                  // ignore: sort_child_properties_last
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DashboardCards(
                            backgroundColor: Color(0xFFf5f6fa),
                            BorderRadiusNumbre: 10,
                            centerChilds: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  tauxExecution.toString(),
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
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DashboardCards(
                            backgroundColor: Color(0xFFf5f6fa),
                            BorderRadiusNumbre: 10,
                            centerChilds: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                SizedBox(
                                  height: 35,
                                ),
                                Text(
                                  factureeCemois.toString(),
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
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DashboardCards(
                            backgroundColor: Color(0xFFf5f6fa),
                            BorderRadiusNumbre: 10,
                            centerChilds: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Container(
                                  height: 100,
                                  child: Container(
                                      child: SfRadialGauge(axes: <RadialAxis>[
                                    RadialAxis(
                                        minimum: 0,
                                        maximum: 150,
                                        ranges: <GaugeRange>[
                                          GaugeRange(
                                              startValue: 0,
                                              endValue: recouvrement,
                                              color: Colors.green,
                                              startWidth: 10,
                                              endWidth: 10),
                                        ],
                                        // ignore: prefer_const_literals_to_create_immutables
                                        pointers: <GaugePointer>[
                                          NeedlePointer(
                                              value: recouvrement,
                                              lengthUnit: GaugeSizeUnit.factor,
                                              needleLength: 0.75,
                                              needleStartWidth: 0,
                                              needleEndWidth: 6)
                                        ],
                                        annotations: <GaugeAnnotation>[
                                          GaugeAnnotation(
                                              widget: Container(
                                                  child: Text(
                                                      recouvrement.toString(),
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight
                                                              .bold))),
                                              angle: 90,
                                              positionFactor: 0.5)
                                        ])
                                  ])),
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
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DashboardCards(
                            backgroundColor: Color(0xFFf5f6fa),
                            BorderRadiusNumbre: 10,
                            centerChilds: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Container(
                                  height: 100,
                                  child: Container(
                                      child: SfRadialGauge(axes: <RadialAxis>[
                                    RadialAxis(
                                        minimum: 0,
                                        maximum: 150,
                                        ranges: <GaugeRange>[
                                          GaugeRange(
                                              startValue: 0,
                                              endValue: utilisation,
                                              color: Colors.red,
                                              startWidth: 10,
                                              endWidth: 10),
                                        ],
                                        // ignore: prefer_const_literals_to_create_immutables
                                        pointers: <GaugePointer>[
                                          NeedlePointer(
                                              value: utilisation,
                                              lengthUnit: GaugeSizeUnit.factor,
                                              needleLength: 0.75,
                                              needleStartWidth: 0,
                                              needleEndWidth: 6)
                                        ],
                                        annotations: <GaugeAnnotation>[
                                          GaugeAnnotation(
                                              widget: Container(
                                                  child: Text(
                                                      utilisation.toString(),
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight
                                                              .bold))),
                                              angle: 90,
                                              positionFactor: 0.5)
                                        ])
                                  ])),
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
