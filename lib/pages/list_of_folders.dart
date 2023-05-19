// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:avocat/shared/card_space_between.dart';
import 'package:flutter/material.dart';
import '../shared/appbar.dart';
import '../shared/custom_bottom_navigation_bar.dart';

class ListOfFolders extends StatefulWidget {
  const ListOfFolders({super.key});

  @override
  State<ListOfFolders> createState() => _ListOfFoldersState();
}

class FoldersList {
  String title, subTitle;
  FoldersList({required this.title, required this.subTitle});
}

class _ListOfFoldersState extends State<ListOfFolders> {
  List<FoldersList> items = [];
  @override
  Widget build(BuildContext context) {
    setState(() {
      items = List.of([
        FoldersList(title: " Tribunal Casa R", subTitle: '123525'),
        FoldersList(title: "طلب الطلاق ", subTitle: '3221'),
        FoldersList(title: " الطعن في دستورية الحظر", subTitle: '2424'),
        FoldersList(title: " Rendez-vous - Tribunal Casa R", subTitle: '42424'),
        FoldersList(title: " Rendez-vous - Tribunal Casa R", subTitle: '78578'),
        FoldersList(title: " Rendez-vous - Tribunal Casa R", subTitle: '75785'),
        FoldersList(title: " Rendez-vous - Tribunal Casa R", subTitle: '4755'),
      ]);
    });
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
            child: Text(
              "Liste des Dossiers",
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
                    return ListViewFolders(item);
                  })),
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

  Widget ListViewFolders(FoldersList item) => Container(
        margin: EdgeInsets.all(8.0),
        height: 60,
        child: CardSpaceBetween(
            backgroundColor: Colors.white,
            BorderRadiusNumbre: 10,
            heightNumbre: 50,
            firstTile: Text(
              item.title,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101751)),
            ),
            secondTitle: Text(
              item.subTitle,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101751)),
            ),
            iconButton: Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
              child: Container(
                height: 25,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF101751),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Folders');
                  },
                ),
              ),
            )),
      );
}
