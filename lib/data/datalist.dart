class DataList {
  String name, title, date;
  DataList({required this.name, required this.title, required this.date});
}

enum SlidableAction { order, Wishlist, Share, delete }

List<DataList> allData = [
  DataList(
      name: 'Amine Bnesaadat',
      title: "Audiance - Tribunal Casa Bccc",
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
      name: 'meryem afnan', title: "P1 - Tribunal Fes", date: '08/09/2023'),
  DataList(
      name: 'Amine Bnesaadat',
      title: "Audiance - Tribunal Casa B",
      date: '05/04/2023'),
  DataList(
      name: 'Ahmed Abc',
      title: "Rendez-vous - Tribunal Casa R",
      date: '08/09/2023'),
];
