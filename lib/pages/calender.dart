// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, dead_code, duplicate_ignore, avoid_print, prefer_interpolation_to_compose_strings

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:moment_dart/moment_dart.dart';

import '../shared/appbar.dart';
import '../shared/custom_bottom_navigation_bar.dart';
import '../shared/custom_buttons_bar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Calender extends StatefulWidget {
  @override
  State<Calender> createState() => _CalenderState();
}

class DataList {
  String name, title, date;
  DataList({required this.name, required this.title, required this.date});
}

enum SlidableAction { order, delete }

class _CalenderState extends State<Calender> {
  List<DataList> items = [];
  @override
  Widget build(BuildContext context) {
    Moment.setGlobalLocalization(MomentLocalizations.fr());
    setState(() {
      items = List.of([
        DataList(
            name: 'Amine Bnesaadat',
            title: "Audiance - Tribunal Casa B",
            date: '05/04/2023'),
        DataList(
            name: 'Ahmed Abc',
            title: "Rendez-vous - Tribunal Casa R",
            date: '08/09/2023'),
        DataList(
            name: 'Rachid rachdi',
            title: "Depalacement - Tribunal Casa Meknas",
            date: '08/09/2023'),
        DataList(
            name: 'meryem afnan',
            title: "P1 - Tribunal Fes",
            date: '08/09/2023'),
        DataList(
            name: 'Amine Bnesaadat',
            title: "Audiance - Tribunal Casa B",
            date: '05/04/2023'),
        DataList(
            name: 'Ahmed Abc',
            title: "Rendez-vous - Tribunal Casa R",
            date: '08/09/2023'),
      ]);
    });
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFE5E7EA),
      appBar: Appbar(),
      body: Column(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ImageIcon(
                    AssetImage("assets/images/Agenda.png"),
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Agenda",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF101751)),
                  )
                ],
              ),
            ),
          ]),
          Expanded(
              child: CustomButtonsBar(
                  heightNumbre: 3,
                  CustomButtonsTabBar: ButtonsTabBar(
                    backgroundColor: Color(0xFFD66746),
                    unselectedBackgroundColor: Colors.grey[300],
                    unselectedLabelStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                    radius: 15,
                    borderWidth: 0.2,
                    borderColor: Color(0xFFADB6CA),
                    contentPadding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    tabs: [
                      Tab(
                        text: "Jour",
                      ),
                      Tab(
                        text: "Semaine",
                      ),
                      Tab(
                        text: "Mois",
                      ),
                    ],
                  ),
                  CustomTabBarView: TabBarView(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Text(
                                Moment.now().format("dddd DD MMMM  YYYY", true),
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFD66746)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "Liste des Tâches",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF101751)),
                            ),
                          ),
                          Expanded(
                              child: ListView.builder(
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              final item = items[index];

                              return Slidable(
                                actionPane: SlidableDrawerActionPane(),
                                //actionPane: SlidableStrechActionPane(),
                                //actionPane: SlidableDrawerDismissal(),
                                //actionExtentRatio: 0.10, width
                                child: buildListTitle(item),
                                secondaryActions: [
                                  Container(
                                    height: 85,
                                    child: IconSlideAction(
                                      iconWidget: Image.asset(
                                          'assets/images/annuler.png',
                                          width: 40),
                                      color: Colors.grey,
                                      onTap: () => onDismissed(
                                          index, SlidableAction.delete),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2),
                                    child: Container(
                                      height: 85,
                                      child: IconSlideAction(
                                        iconWidget: Image.asset(
                                            'assets/images/valider.png',
                                            width: 40),
                                        color: Colors.grey,
                                        //icon: Icons.close,
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )),
                        ],
                      ),
                      Center(
                        child: Icon(Icons.directions_transit),
                      ),
                      Center(
                        child: Icon(Icons.directions_bike),
                      ),
                    ],
                  ))),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    ));
  }

  Widget buildListTitle(DataList item) => Container(
        padding: EdgeInsets.only(bottom: 5),
        child: Card(
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFADB6CA)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      item.title,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF101751)),
                    ),
                  ),
                  Text(
                    "13/05/2023 - 15:30",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFADB6CA)),
                  ),
                ],
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                height: 25,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF101751),
                  ),
                  onPressed: () {
                    // Use setState to rebuild the widget tree and update the list
                    // setState(() {
                    //   item = item;
                    // });
                    Navigator.pushNamed(context, '/Event');
                  },
                ),
              ),
            ),
          ),
        ),
      );

  void onDismissed(int index, SlidableAction action) {
    setState(() => items.removeAt(index));
  }
}
