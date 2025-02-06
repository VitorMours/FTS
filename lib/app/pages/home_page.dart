import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  TextStyle selectedStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.w600);
  TextStyle unselectedStyle =
      TextStyle(color: Colors.black87, fontWeight: FontWeight.normal);
  changeDestination(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      NavigationRail(
          labelType: NavigationRailLabelType.all,
          selectedLabelTextStyle: selectedStyle,
          unselectedLabelTextStyle: unselectedStyle,
          useIndicator: true,
          elevation: 5,
          minWidth: 90,
          selectedIndex: _selectedIndex,
          onDestinationSelected: changeDestination,
          destinations: [
            NavigationRailDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: Text("Home")),
            NavigationRailDestination(
                icon: Icon(Icons.insert_chart_outlined),
                selectedIcon: Icon(Icons.insert_chart),
                label: Text("Progress")),
            NavigationRailDestination(
                icon: Icon(Icons.table_chart_outlined),
                selectedIcon: Icon(Icons.table_chart),
                label: Text("Database"))
          ]),
      VerticalDivider(thickness: 1, width: 0.5),
      Expanded(flex: 1, child: Container(color: Colors.white))
    ]);
  }
}
